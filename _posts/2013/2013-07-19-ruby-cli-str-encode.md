---
layout: post
title:  "[Ruby] コマンドプロンプトから入力される文字列のエンコードについて"
date:   2013-07-19 22:38:40
category: ruby
---

春Cモジュールが始まりました。
単位を落とした授業と2年次の必修?の時間帯が重複していて冷えてます。

さておき、CモジュールからRubyの授業が始まりました。
で、演習の中に以下のコードを実行する　というものがありました。

{% highlight ruby %}
# encoding:Shift_JIS
eng = {
"かえる" =&gt; "frog",
"はち" =&gt; "bee",
"かも" =&gt; "duck",
"せみ" =&gt; "cicada"
}

print("選んで入力してください。(かえる,はち,かも,せみ)n")

str = gets.chomp
print(eng[str],"n")
{% endhighlight %}

HashのKeyを入力して、入力した文字列を用いてvalueを出力するコードです。

![Picture description](/images/2013/07/552eb4aed1593e952e7a12c7b8a0e9e1.png){: .img-thumbnail}

実行して、keyを入力すればvalueが出力されるはずでしたが、何も出力されませんでした。

何故でしょう。
ちなみに、Windows 8 Ruby 2.0.0p0で実行してます。

1行目で定義しているので、keyの文字列のエンコードはShift_JISになっているはずです。
(講義ではShift_JISを推奨しているようです)
では、入力した文字列のエンコードは一体何なのでしょうか。
Hashのkeyも文字列と、入力した文字列を調べてみましょう。
先ほどのコードに、Hashの0番目のkeyと入力され文字列、それぞれのエンコードを表示させてみます。

{% highlight ruby %}
# encoding:Shift_JIS
eng = {
"かえる" =&gt; "frog",
"はち" =&gt; "bee",
"かも" =&gt; "duck",
"せみ" =&gt; "cicada"
}

print("選んで入力してください。(かえる,はち,かも,せみ)n")

str = gets.chomp

p eng.keys[0]
p eng.keys[0].encoding

p str
p str.encoding

print(eng[str],"n")
{% endhighlight %}


![Picture description](/images/2013/07/0218efccfa565d4d2ee80984bd2a639e.png){: .img-thumbnail}


文字列のエンコードは、encodeingメソッドで確認できます。
実行してみると、HashのkeyはShift_JISで、入力した文字列はWindows-31Jでエンコードされていることが確認できます。
keyは文字化けしていますが、入力した文字列は正しく表示されています。
原因は、プログラム内で定義したエンコード(Shift_JIS)と入出力の際の文字列のエンコード(Windows-31J)が異なっていることです。

### 解決方法
入力した文字列のエンコードを変換しても良いのですが、出力する際に文字化けしてしまいます。
なので、プログラム内のエンコード自体を変更することにしました。

{% highlight ruby %}# encoding:Windows-31J
eng = {
"かえる" =&gt; "frog",
"はち" =&gt; "bee",
"かも" =&gt; "duck",
"せみ" =&gt; "cicada"
}

print("選んで入力してください。(かえる,はち,かも,せみ)n")

str = gets.chomp

p eng.keys[0]
p eng.keys[0].encoding

p str
p str.encoding

print(eng[str],"n")
{% endhighlight %}

![Picture description](/images/2013/07/1253961f679a6d78d3ab69a6a75af69a.png){: .img-thumbnail}

実行してみると、keyと入力した文字列のエンコードが一致し、無事にfrogが出力されました。

コマンドプロンプト上での入出力のエンコードは Windows-31Jであることを、覚えておくと良さそうです。(常識なのかもしれませんが)

ちなみに、OSXのターミナルで入力・出力される文字列のエンコードはutf-8です。
ソースコード自体のエンコードがUTF-8になっていれば、冒頭で定義をしなくても動作しました。(資料はMac上で作っているのかもしれませんね
