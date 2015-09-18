---
layout: post
title:  "[開発向け] Google Chrome で Same origin policy を無効化する方法"
date:   2015-09-18 21:54:00
category: chrome
---

Google Chrome で Same origin policy を無効化する方法を紹介します。
（OSX版）

Google Chromeでは Same origin policy により、異なる生成元からのリソース取得が遮断されます。
異なる生成元のリソースにアクセスするとコンソールには次のようなエラーが表示されます。

{% highlight bash %}
XMLHttpRequest cannot load [target path].
No 'Access-Control-Allow-Origin' header is present on the requested resource.
Origin '[your app path]' is therefore not allowed access.
{% endhighlight %}

ブラウザを保護するための機能なので、通常は迂回することはしません。
しかし、アプリケーション開発などにおいてサーバ側の設定などに手を加えられない場合、この機能を無効化したくなることがあります。

Google Chromeでは、起動時に `--disable-web-security` という引数を指定すると、Same origin policy などのセキュリティに関する機能を無効化することが出来ます。

OSXの場合ターミナルで以下の様なコマンドを実行します。 Google Chrome Canaryを指定していますが、Google Chromeでも可能です。
OSによって引数の指定方法が異なるので注意してください。

{% highlight bash %}
open -a Google\ Chrome\ Canary --args --disable-web-security
{% endhighlight %}

コマンドを実行し、ウインドウが表示された際に画像のような警告が表示されれば成功です。
この状態であれば、通常の Google Chrome では遮断されてしまう異なる生成元のリソースにもアクセスすることが出来ます。

![Picture description](/images/2015/09/chrome.png){: .img-thumbnail}

ご利用は計画的に。なぜこの機能が存在するのかよく考えた上でご利用ください。

[同一生成元ポリシー - JavaScript \| MDN](https://developer.mozilla.org/ja/docs/Web/JavaScript/Same_origin_policy_for_JavaScript){:target="_blank"}
