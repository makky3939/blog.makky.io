---
layout: post
title:  "JavaScriptでドローンをハックする"
date:   2016-01-16 03:00:00
category: javascript
thumbnail: /images/2016/01/DSC2791.jpg
---

この前購入したドローンをキーボードで操作できるようにしてみました。

## 用意するもの
- ドローン
- PC(with nodejs, bluetooth)
- キーボード

## ドローン
Parrot Airborne Cargo Travis を使用します。

ボディーにLEGOを取り付けられるタイプです。MinecraftのLEGOで作った木を付けてみました。

コントローラは付属されておらず、iOS / Androidアプリが提供されていてアプリから操作できます。

手のひらサイズなので室内でも遊べます。

{% image ParrotAirborneCargoTravis /images/2016/01/DSC2791.jpg %}

<iframe src="http://rcm-fe.amazon-adsystem.com/e/cm?t=makkyk-22&o=9&p=8&l=as1&asins=B012SQUQZW&ref=qf_sp_asin_til&fc1=000000&IS2=1&lt1=_blank&m=amazon&lc1=0000FF&bc1=000000&bg1=FFFFFF&f=ifr" style="width:120px;height:240px;" scrolling="no" marginwidth="0" marginheight="0" frameborder="0"></iframe>


## PC

bluetoothを使えるPCが必要です。今回はMac Book Proを使用しました。

node.js(今回はv5.0.0)をインストールして、以下のリポジトリをcloneします。

[makky3939/airborne-cargo-drone-controller](https://github.com/makky3939/airborne-cargo-drone-controller){:target="blank"}

cloneしたらリポジトリに移動し、`npm i`で必要なパッケージをインストールします。

### ドローンのUUIDを取得する

{% highlight bash %}
npm run find

> airborne-cargo-drone-controller@0.0.1 find /xxx/airborne-cargo-drone-controller
> node find.js

{ name: 'Travis_xxx',
  uuid: 'xxx',
  rssi: -39 }
{% endhighlight %}

`npm run find` を実行してしばらくすると、scan出来たデバイスの名前とUUID、rssiが表示されます。ドローンのUUIDを使用するのでコピーしておいて下さい。

### ドローンのUUIDを設定する

先ほど取得したUUIDをリポジトリ内の
[controller.js#L12](https://github.com/makky3939/airborne-cargo-drone-controller/blob/master/controller.js#L12){:target="blank"}の`'uuid'`の部分にペーストします。

### ドローンを飛ばす

{% highlight bash %}
npm run controller
{% endhighlight %}

実行してしばらくすると、

{% highlight bash %}
Rolling Spider ready
[Robot 1] - Working.
{% endhighlight %}
のようなログが表示されるので、それ以降は操作が可能です。

現状では以下のキーが使えるようになっています。

| キー      |動作       |
|:----------|----------:|
|E       |離陸       |
|Q        |着陸        |
|W       |上昇       |
|S       |降下       |
|A       |時計回り       |
|D       |反時計回り       |
|Up       |前進       |
|Down       |後退       |
|Left       |左に移動       |
|Right       |右に移動       |

### 飛んだ

<iframe width="560" height="315" src="https://www.youtube.com/embed/fxF7r1xOoS0" frameborder="0" allowfullscreen></iframe>

## まとめ
遂にJavaScriptで空を飛ぶ物体を制御出来るようになりました。

素晴らしい時代になりましたね。

ただし、テスト中に飛行した状態でドローンが制御不能になってしまい、一時的に兵器と化しました。機種にもよりますが衝撃を加えると緊急停止するので、機体の下側をポンと叩くと回収できます。

今回はキーボードで操作できるようにしましたが、ゲームパッドを使ったり、iPhone等の加速度センサーを使うとスムーズな移動が出来るような気がします。

今後は、

- バッテリー残量と電波強度を確認するUIの制作
- Beacon等との連携

を試してみるつもりです。

CIが走りだしたら離陸して、成功したら着陸し、失敗したら緊急着陸or壁に突撃とかすると面白いかなと思ってます。指定したサーバが落ちたら離陸+ひたすら回転とか？

あと、最近は暖房とサーキュレーターが稼働しっぱなしなのですが、
温度センサーと連動させてドローンで空気循環をするのも良いですね。Beaconを設置して、２点間の移動することが出来れば可能な気がします。
