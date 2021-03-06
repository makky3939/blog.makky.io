---
layout: post
title:  "卒業研究をGitHubで管理する"
date:   2016-12-13 5:00:00
category: tool
thumbnail: /images/2016/12/gh1.png
---

これは
[Klis Advent Calendar 2016](http://www.adventar.org/calendars/1463){:target="blank"}
13日目の記事です。

[昨年のAdvent Calendar](http://www.adventar.org/calendars/1005){:target="blank"}
では、卒業判定をするアプリを作ったというお話をしました。
そしてついに、今年度から大学の成績管理システムに卒業判定の機能が追加されました。(学類によってはまだ使えないのかな)

なので、わざわざ上記の
[卒業判定アプリ](http://blog.makky.io/articles/2015/12/07/escapegoat/){:target="blank"}
を利用する意味は無くなってしまいましたが、成績が公開されたり履修の期限が近づくと未だにアクセスがあります。
（困ったことがあったらぜひ教えてください）


さて、卒業研究をしている皆さん、進捗はいかがでしょうか。

今年度のklisの卒業論文の提出締め切りは12/22です。あと9日ですね。9日ですよ???。

というわけで、現４年生にとっては今更な話題ですが、卒業研究をGitHubで管理する方法を実践してみたので紹介します。

なお、バージョン管理ツールとしてgitやGitHubを使おうみたいな話は出てこなくて、これから話すことはWebブラウザされあれば実践することが出来ます。

## GitHub
ソースコードを管理するためのgitというツールがあります。
gitはklis的に説明すると黒い画面の世界のシステムですが、使いやすくするためのアプリやWebサービスがたくさんあって、その１つが
[GitHub](https://github.com/){:target="blank"}
です。

GitHubでは数多くのオープンソースソフトウェア(例えば
[Ruby](https://github.com/ruby/ruby){:target="blank"}
とかそのライブラリ)が管理されていて、公開されているものに関しては誰でもソースコードを閲覧することが出来ます。
Rubyのプロジェクトに変更を加えることが出来るのは限られた人たちだけですが、不具合の報告や新しい仕様の要望などに関しては誰でも提案することが出来ます。

GitHubにはソフトウェアの管理機能だけでなく、ソフトウェアに関わる人達のコミュニケーションをすすめるためのプロジェクト管理機能が備わっているということです。


## 作業の管理
卒業研究の場合、大抵の学生は自分以外の人（例えば指導教官）と定期的(?)に打ち合わせをすると思います。
打ち合わせでは、前回から進んだことがhogeで、次の取り組む課題はpoyoですみたいなことを話し合うはずです。

ここでいうhogeやpoyoの量が少なければ良いですが、締切が近づくに連れて量が増え、やがてhogeでもpoyoでもないことをやり始めて辛い感じになるわけです。

GitHubでは2016年9月にProjectという機能が追加されました。
Projectではhogeやpoyoがどの状態にあるかを管理することが出来ます。

<div class="card">
  <div class="card-block">
    <img src='/images/2016/12/gh1.png' width='100%' height='auto'/>
  <hr />
  <p class='text-xs-right'>
    論文Projectの例
  </p>
  </div>
</div>

こんな感じで、未着手の作業、作業中の作業、完了（次に報告する）、完了（報告済み）みたいな状態を作っておいて(自分で設定できます)、左から順に作業を移していきます。
無意識のうちにTwitterをしたりドローンを飛ばしてしまっても、この画面を見れば今の自分がすべき作業がひと目でわかります。

Projectは１つのリポジトリに対して複数個作ることが出来るので、論文と実験と...というように分けて作業を管理することが出来ます。


## 積読の管理
新しい本や論文を見つけてくるのは簡単ですが、読んでどんな内容だったかをまとめるのは時間がかかります（個人差あり）。

世の中には様々な文献管理ツール(
[Mendeley](https://www.mendeley.com/home/a/){:target="blank"}
とか)が存在しますが、それ以前に、読んだのか、読んでいないのかを管理しておきたいです。

自分の場合は、GitHubのIssueという問題提起をするための機能とProjectを組み合わせて管理しています。

<div class="card">
  <div class="card-block">
    <img src='/images/2016/12/gh2.png' width='100%' height='auto'/>
  <hr />
  <p class='text-xs-right'>
    ひとまずすべて列挙して
  </p>
  </div>
</div>

<div class="card">
  <div class="card-block">
    <img src='/images/2016/12/gh3.png' width='100%' height='auto'/>
  <hr />
  <p class='text-xs-right'>
    少しずつ読む
  </p>
  </div>
</div>

これで、新しい本や論文はどんどんIssueにしておき、積読Projectを通して少しずつ読み進めていくことが出来るようになります。

GitHubではシンプルなWikiを作ることも出来るので、
[落合メソッド](http://www.slideshare.net/Ochyai/1-ftma15){:target="blank"}
のような形式でメモを残すことも出来ます。

<div class="card">
  <div class="card-block">
    <img src='/images/2016/12/gh4.png' width='100%' height='auto'/>
  <hr />
  <p class='text-xs-right'>
    メモ
  </p>
  </div>
</div>

## 原稿の変更点の管理
先生「ここがおかしい」

ま「修正します（LOLしてから直そ）」

〜〜〜次の日〜〜〜

ま < 先生の字が読めない

みたいなことがあると思います。

改善策として、

1. LOLをするまえに修正をする
2. 先生の字を読めるようにする

の２つが考えられます。

1を実践するのは難しいので、先生の字が読めるうちに修正箇所を明確にする必要があります。

若干gitの話になりますが、GitHubではテキストの差分にコメントを書くことが出来ます。

<div class="card">
  <div class="card-block">
    <img src='/images/2016/12/gh5.png' width='100%' height='auto'/>
  </div>
</div>

LOLを起動する前に、変更箇所にコメントを書くことが苦痛にならないように工夫しておくことが重要です。

## まとめ
1年ぐらいGitHubを使って卒業研究に関するいろいろを管理してみて、うまくいっている例を紹介しました。

GitHub以外にも様々なプロジェクト管理ツールがあるので、是非自分にあうものを探してみて下さい。

先生や他の学生とGitHub越しでやりとりができると最高なのですが、自分の環境では難しそうです。（弊でslackの導入を提案して失敗しました）

注意点として、GitHubはただのWebサービスなのでいつ障害が発生するか、アカウントが使えなくなる分からないというリスクもあるので、自分のUSBやDropBox等にバックアップすることが必須です。

それでも日頃の進捗管理を効率化するために、何らか道具を駆使するのは良いことだと思ってます。

それでは皆さん良いお年を〜
