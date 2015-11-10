---
layout: post
title:  "Google Analyticsで最初に設定すべきフィルタリング"
date:   2015-11-10 14:24:00
category: web
---

Google Analyticsをしばらく使っていると、

- localhost からのアクセス
- リファラスパム
- トラッキングコードをコピペされた先からのアクセス

など、意図しないアクセスが集計されていることに気付きます。


これらの対策として、既存のものを紹介します。

<div class="card">
  <div class="card-block">
  <a href="http://stocker.jp/diary/google-analytics/" target="_blank">Google Analyticsのコードがコピーされても動かないようにする方法</a>
  <hr />
  <p>location.hostname が意図する場合のみトラッキングコードを実行する方法です。</p>
  </div>
</div>

<div class="card">
  <div class="card-block">
  <a href="http://analyze.siraberu.info/post-450/" target="_blank">Googleアナリティクスで98%以上のスパム記録を除外する方法！</a>
  <hr />
  <p>リファラスパムをブラックリストでフィルタリングする方法です。</p>
  </div>
</div>

<div class="card">
  <div class="card-block">
  <a href="http://matome.naver.jp/odai/2142138671904593001" target="_blank">[見つけ次第更新] リファラースパムリスト Google Analytics</a>
  <hr />
  <p>リファラスパム対策でブラックリストで追加するべきホスト名が揃っています。</p>
  </div>
</div>

## そもそもの話
リファラスパムとトラッキングコードをコピペされた先からのアクセスについては、自分のホスト名のホワイトリストでフィルタリングすれば良いです。

次のような設定をすることで、ホスト名に自分のホスト名が含まれる場合のみをフィルタリングすることが出来ます。

![Picture description](/images/2015/11/2015-11-10.png){: .img-thumbnail}

## ホスト名の収集
以下の様な設定でドメイン名も記録しておくことが出来ます。
![Picture description](/images/2015/11/2015-11-10-2.png){: .img-thumbnail}

Viewをいくつか作ることができるので、

- すべてのアクセス(スパム許容)
- すべてのアクセス(任意のホスト名のみ)
- サブドメインAへのアクセス
- サブドメインBへのアクセス

のようにしておくことで、細かく収集が可能です。

サブドメイン毎のフィルタリングは、ホスト名の場合と同じ要領で設定が可能です。
![Picture description](/images/2015/11/2015-11-10-3.png){: .img-thumbnail}

## 自分のアクセスを収集しない
<div class="card">
  <div class="card-block">
  <a href="https://chrome.google.com/webstore/detail/google-analytics-opt-out/fllaojicojecljbmefodhfapmkghcbnh" target="_blank">拡張機能Google Analytics オプトアウト アドオン</a>
  <hr />
  <p>このChromeExtensionをインストールしておくと、本番環境にアクセスしても、アクセスログが残りません</p>
  </div>
</div>

Chrome以外のブラウザ拡張でも同等のものがあると思うので、他のブラウザからのアクセスログを遮断したい場合はインストールすると良いでしょう。

## おわりに
なにか美味しい設定があればぜひ教えて下さい！
