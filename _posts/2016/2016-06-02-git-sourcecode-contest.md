---
layout: post
title:  "卒業判定アプリで賞金をもらった話"
date:   2016-06-01 10:00:00
category: diary
thumbnail: /images/2015/12/2015-12-06.png
---

卒業判定アプリで賞金をもらった話

<div class="card">
  <div class="card-block">
  <a href="http://app.makky.io/escapegoat/usage" target="_blank">
    <img src='/images/2015/12/2015-12-06.png' width='100%' height='auto'/>
  </a>
  <hr />
  <p class='text-xs-right'>
    <a href="http://app.makky.io/escapegoat/usage" target="_blank">
      EscapeGoat
    </a>
  </p>
  </div>
</div>

[Klis Advent Calendar 2016](http://www.adventar.org/calendars/1005){:target="blank"}
の
[7日目の記事](http://blog.makky.io/articles/2015/12/07/escapegoat/){:target="blank"}
で紹介した、筑波大学の知識情報・図書館学類生向けの卒業判定アプリを
[Gitソースコンテスト](https://hasigo.co.jp/sourcecon01-result/){:target="blank"}
に応募したところ、銅賞を受賞しました。

ヤギアプリと称して昨年の秋頃から運用していましたが、残念なことに（というか遂に）、卒業判定の機能が履修管理システムに実装されました。

公式の方には司書資格の判定機能などが無かったりするのですが、メインストリームっぽい役割は達成した感があります。

というわけで、いい感じの区切りな気がするので、ヤギアプリのこれまでの利用状況と今後について触れておこうと思います。



## 利用状況
サービスをリリースした、2015年10月末から現在(2016年5月末)までの利用状況を紹介します。

### 時系列
{% image 時系列 /images/2016/06/goat1.png %}

成績開示や履修登録の締め切りの前後にアクセスが集中していることが確認できます。

成績開示のタイミングでTwitterで宣伝していたので、アクセス元のほとんどがTwitterからでした。

2016年4月半ばの履修登録の締め切りでは、期限に近づくに連れてアクセス数が増えていていい感じです。

この時は特に宣伝していなかった気がするので、誰かにURLをシェアしていただいたのだと思います。


### 機能別
{% image 機能別 /images/2016/06/goat2.png %}

Topページを訪れたユーザのうち4割が卒業判定のページヘ遷移しているようです(= CSVの入力に成功した)。

筑波大学の知識情報・図書館学類の2013, 2014, 2015年度入学生のうち、三年次編入を除いた学生しか使えないサービスにもかかわらず、色々な方からアクセスいただいたようです。（履修管理システムからCSVをエクスポートするのが大変なので、もっと簡単にできる仕組みを作れば増えたかもしれない）

## これから
とりあえず、自分がテクニカルコミュニケーターの要件を満たしているか知りたいので、これは追加しようと思っています（たぶん）。

アプリ自体の運用にはコストがほとんどかからないので、自分が卒業してからもしばらくは "このまま" 維持しておくことはします。が、メンテナンス出来るかは状況次第です。

見た目は公式のものよりも良い気がするけど、公式のほうが正確なので、適宜使い分けていただけると幸いです。


## 賞金

今回は賞金として２万円を頂きました。

ヤギアプリのエサ代（サーバ維持費）換算で数カ月分は賄えそうです。

完全にサイドプロジェクトとして開発していたので、テスト等は全く行っておらず、成績開示のタイミングの直前にメンテナンスして知り合いに各自の成績情報で上手く動いているか確かめてもらっていました。（GitHubのプロジェクトにPullRequestも数件頂きました）

なので賞金は、
使っていただいた方やレビューしていただいた方、不具合を報告していただいた方、コミットしていただいた方等にご飯など奢るのに使うことにします。

奢られたい方は適当にご連絡下さい。

というわけで

> 使っていただいた方、レビューしていただいた方、不具合を報告していただいた方、コミットしていただいた方

ありがとうございました！！

前述のとおりしばらくは生きていると思うので、ぜひご活用下さい。
