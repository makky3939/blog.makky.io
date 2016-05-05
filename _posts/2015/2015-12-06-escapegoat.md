---
layout: post
title:  "klis向け卒業判定アプリを作った"
date:   2015-12-07 22:18:00
category: webapp
thumbnail: /images/2015/12/2015-12-06.png
---

この投稿は
[Klis Advent Calendar](http://www.adventar.org/calendars/1005){:target="blank"}
7日目の記事です。

klis向け卒業判定アプリ
[EscapeGoat](http://app.makky.io/escapegoat/){:target="blank"}
を作ったので、紹介します。

## EscapeGoat
![Picture description](/images/2015/12/2015-12-06.png){: .img-thumbnail}

![Picture description](/images/2015/12/2015-12-06 20.09.35.png){: .img-thumbnail}

![Picture description](/images/2015/12/2015-12-06 20.09.45.png){: .img-thumbnail}

## 概要
Twinsからエクスポートしたcsvファイルをこのアプリで読み込むことで、履修状況を基礎科目、専門基礎科目、専門科目のそれぞれ必修科目、選択科目、自由科目ごとに集計して、表示します。

各科目区分ごとの現在の取得単位数と、卒業に必要な単位数が分かるので、大学を卒業するために必要な要件を満たしているかチェックすることが出来ます。

10月末に一度リリースしていましたが[1]、昨日、司書資格判定の機能を実装したバージョンにアップデートしました。

現在は、klis13生向け（3年次編入を除く）の判定処理を中心に実装を進めているため、klis13生以外の履修データを読み込むと上手く集計が出来ない場合があります。（特に司書資格判定に関しては新課程のみ実装しています）

学群学務にTwinsの画面を印刷して持ち込むと卒業要件を満たしているか確認してくれるのですが、「まじかそれ便利じゃん」と思って向かったら自分で単位数の足し算をさせられてつらかったので作りました。

## 実装
React / Flux です。

プロジェクトはMITライセンスでGitHubにて公開しています[2]。

集計処理がクライアントサイドのJavaScriptで完結しているため、ページの読み込みさえ終えればインターネットに繋がっていなくても使うことが出来ます。

BabelでES6を使うと幸せになれる（気がした）ので当初はES6で書いていましたが、頻繁にメンテナンスするアプリではありませんし、いつ既存のコードがビルド出来なくなるかとかを考えると面倒見切れないので、昨日のアップデートでバベルの塔から降りました。

CSVファイルを読み込み仕組みや、WebStorageを用いてタブまたはウインドウが閉じられるまで履修データを保持する仕組みを実装しているため、IE9以下では動作しません。気が向いたら対応するかもしれません。

## これから
- 科目区分の振り分け時の細かな条件の修正
- klisの各学年の対応
- Topページで使うヤギの写真を撮りに行く
- テクニカルコミュニケーター判定
- 他学群の対応

今考えている優先度の順に列挙しました。

振り分けの条件をDSLっぽく記述することで、他学群の卒業判定も出来るはずです。ですが、全学群の条件を集めて記述するのは時間がかかりそうですし、Mastには強いサービスがありますし[3]、Coinsには強いスプレッドシートがあると聞いたことがあるので、どちらかと言えばklis向けの機能を充実させたほうが良いような気がしています。

そもそもなんでTwinsで卒業判定出来ないんだ。

## まとめ
klis向け卒業判定アプリ
[EscapeGoat](http://app.makky.io/escapegoat/){:target="blank"}
の紹介でした。

今後も履修申請期限の前ぐらいを狙ってメンテナンスしていこうと思います。

不満や要望がある場合はご連絡ください。ｺﾝﾄﾘﾋﾞｭｰﾄ[4]も歓迎します。

一緒にTopページで使うヤギの写真を撮りに行ってくれる人も募集しているのでこちらも是非ご連絡ください。

---

## 参考文献
[1] [https://twitter.com/_Makky_/status/658278834488242176](https://twitter.com/_Makky_/status/658278834488242176){:target="blank"}

[3] [https://github.com/makky3939/EscapeGoat](https://github.com/makky3939/EscapeGoat){:target="blank"}

[3] [https://yuji.website/twinplus/](https://yuji.website/twinplus/){:target="blank"}

[4] [https://github.com/makky3939/EscapeGoat/issues](https://github.com/makky3939/EscapeGoat/issues){:target="blank"}
