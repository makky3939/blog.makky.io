---
layout: post
title:  "Scalaの静的サイトジェネレータを使ってみる"
date:   2015-10-21 17:24:00
category: scala
---

世の中にはたくさんの静的サイトジェネレータが存在します。
[StaticGen](https://www.staticgen.com/){:target="blank"}
というサイトでは、静的サイトジェネレータのリポジトリを検索することができ、
GitHubのster数やfork数などから、メンテナンスされているかどうか、利用者がいるかどうかなどを確認することが出来ます。

2015年10月の時点では、Jekyll(Ruby) や Octopress(Ruby)、Hexo(JavaScript)、Hugo(Go)などの人気が高いようです。

ちなみに
[私のブログ](http://blog.makky.io){:target="blank"}
は Jekyll を用いて管理しています。

静的サイトジェネレータを使い始めて、設定などに手を出し始めると、必然的に実装に用いられたプログラム言語に触れることになります。

というわけで、今回は Scala で実装された静的サイトジェネレータを触ってみることにしました。

## Scala製静的サイトジェネレータを探す
[StaticGen](https://www.staticgen.com/){:target="blank"}
にて Scalaに限定して検索を行うと、以下の２つが見つかりました。

- [Scalatic](https://github.com/padurean/scalatic){:target="blank"}
- [Monkeyman](https://github.com/wspringer/monkeyman){:target="blank"}

[Static Site Generators](https://staticsitegenerators.net/){:target="blank"} では Monkeymanに加えて、

- [Soapbox](https://github.com/arnolddevos/Soapbox){:target="blank"}
- [Jekytrum](https://github.com/georgeOsdDev/jekytrum){:target="blank"}

も検索できました。

今回は、Latest commit が一番最近の
[Scalatic](https://github.com/padurean/scalatic){:target="blank"}
を使ってみることにします。

## Scalaticを試す

とりあえず git clone します。

{% highlight bash %}
git clone git@github.com:padurean/scalatic.git
{% endhighlight %}

リポジトリ内に、テンプレートが用意されているので、まずはこれを動かしてみます。
テンプレートは以下の位置にあります。
{% highlight bash %}
$ cd scalatic/src/test/scala/scalatictest
$ tree .
.
├── expected
│   ├── Blog-post-Sample-One-2015-06-15-03-45.html
│   ├── Blog-post-Sample-Two-2015-07-03-23-45.html
│   └── index.html
├── new
│   ├── Blog-post-Sample-One-2015-06-15-03-45.md
│   └── Blog-post-Sample-Two-2015-07-03-23-45.md
└── source
    ├── cayman.css
    ├── footer.html
    ├── github-light.css
    ├── github-markdown.css
    ├── header.html
    └── normalize.css

3 directories, 11 files
{% endhighlight %}

テンプレートをscaffoldする仕組みは存在しないため、実際にサイトを作成する場合には、手動にてディレクトリ構成を用意する必要があります。
newディレクトリに新たな記事を追加すると、ビルド時にsource/postsにmvしてくれるようです。

実行は、Scalaticのproject rootから

{% highlight bash %}
sbt "run ./src/test/scala/scalatictest"
{% endhighlight %}

を実行します。

jarファイルを作る(またはダウンロード)すれば

{% highlight bash %}
java -jar scalatic-0.x.x ./src/test/scala/scalatictest
{% endhighlight %}

でも実行できるそうです。DockerのContainerとかでサイトを管理するときに便利かも。

## できた
- 新たな記事用の .md を生成するタスク
- cssやhtml、js等の圧縮ツールを使えるように
- カテゴリの一覧や月別で参照するための仕組み

など規模が大きめの静的サイトジェネレータでは標準で実装されていそうな機能が無かったりするので、
この辺りを再発明することで scala 力が上がりそうな気がします。
