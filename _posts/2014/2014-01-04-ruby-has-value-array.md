---
layout: post
title:  "[Ruby] Hashのvalueに配列を指定するときの注意点"
date:   2014-01-04 19:40:05
category: ruby
---

実行環境: ruby 2.1.0p0 (2013-12-25 revision 44422) [x86_64-darwin13.0]

以下のようなケースです。

{% highlight ruby linenos %}
foo = {a: "hoge", b: Array.new(3, Array.new)}

#変更前
p foo[:b] # => [[], [], []]
p foo[:b].m&object_id)

foo[:b][0].push "hoge"

#変更後
p foo[:b] # => [["hoge"], ["hoge"], ["hoge"]]
p foo[:b].map(&:object_id)
{% endhighlight %}

foo[:b][0]にpushした内容が、foo[[:b][1]、foo[[:b][2]にも代入されてしまいます。
object_idが同じになっていることが原因なので、修正を加えます。

{% highlight ruby linenos %}
foo = {a: "hoge", b: Array.new(3).map{Array.new}}

#変更前
p foo[:b] # => [[], [], []]
p foo[:b].map(&:object_id)

foo[:b][0].push "hoge"

#変更後
p foo[:b] # => [["hoge"], [], []]
p foo[:b].map(&:object_id)
{% endhighlight %}

このように記述すると、それぞれの配列を個別に扱えるようになります。
pushの仕方に問題があるのではないかと色々と試行錯誤してしまうので、覚えておくと快適にコーディング出来ますね。
