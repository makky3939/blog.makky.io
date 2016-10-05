---
layout: post
title:  "rake db:seedで巨大なCSVファイルを扱う"
date:   2015-01-16 14:26:48
category: ruby
---

Railsで rake db:seedする時のお話です。
次のようなコードで、CSVファイルからデータの読み込みができますね。

{% highlight ruby %}
require 'csv'
CSV.readlines("hoge.csv").each.with_index(1) do |row, index|
  model =  Model.new(
    column_1: row[0],
    column_2: row[2],
    column_3: row[3]
  )
  model.save
  print "\rLine ##{index} "
end
{% endhighlight %}

しかし、CSVファイルが非常に巨大であったり計算機のメモリが不足している場合、CSVファイルをパースして配列を返す処理が中断されてしまう場合があります。

----

## 解決方法

以下の様なコードに変更します。

{% highlight ruby %}
require 'csv'
open("hoge.csv") do |csv|
  csv.each.with_index(1) do |line, index|
    row = line.split(",")
    model = Model.new(
      column_1: row[0].,
      column_2: row[1],
      column_3: row[3]
    )
    model.save
    print "\rLine ##{index} "
  end
end
{% endhighlight %}

Seedに用いるデータのサンプルとして用意した小さなファイルでは動いても、本番で利用する巨大なファイルでは動かない、なんてことになるので、覚えておくとよいでしょう。

※Seed用のgem等を使用している場合は、気にする必要がないのかもしれません。
