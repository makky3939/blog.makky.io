---
layout: post
title:  "楽しいGoogle Chromeの使い方"
date:   2014-12-19 23:39:31
category: app
---

こんにちは、klis13ACのMakkyです。

この投稿は
[Klis Advent Calendar](http://www.adventar.org/calendars/704){:target="blank"}
20日目の記事です。

klisとは、筑波大学 情報学群 知識情報・図書館学類の英語表記である、Knowledge and Library Sciences, School of Informaticsの略称です。
klis13ACは知識情報・図書館学類の2013年度生でAC入試を受験した人、という意味です。
文系の方も理系の方も在籍しているよくわからない学類で、この学類の約半数を文系の方が占めています。
授業も文系と理系の科目が混在していて、文系の方は理系の、理系の方は文系の授業に苦労しているように見えます。
（ちなみに私はどちらも出来ない人です）

さて、「<strong>本文にklisが含まれていれば内容は問わない</strong>」というのがこのAdvent Calendarの要件です。どうやらここまでで要件を達成することが出来ましたね。

----

というわけで、ここからはklisとは関係ないことを書きます。

WebサイトやWebアプリを開発する際に便利なGoogle Chromeの使い方を３つ紹介します。

## 1.Chrome Developer Toolは横分割に出来る

皆さんお馴染みのChrome Developer Tool。

Windowsの場合は、

{% highlight bash %}
F12または Ctrl + Shift + I
{% endhighlight %}

Macの場合は、

{% highlight bash %}
Cmd + Opt + I
{% endhighlight %}

で起動することが出来ます。

とても便利ですが、開くと画面が縦に分割されてしまい、WebページもDeveloper Toolも見通しがよくありません。
ですが、実はDeveloper ToolのXボタンの *左隣にある四角いボタン* を押すと、*横分割に切り替える* ことが出来ます。

![Picture description](/images/2014/12/klis_advent_calender1.png){: .img-thumbnail}
縦分割の状態

![Picture description](/images/2014/12/klis_advent_calender2.png){: .img-thumbnail}
横分割の状態

状況によって上手く切り替えると良いでしょう。

更に、先ほどのボタンを *長押し* するとメニューが１つ増えます。
これを選択するとDeveloper Toolが別ウインドとして表示されます。

![Picture description](/images/2014/12/klis_advent_calender3.png){: .img-thumbnail}
別ウインドウに分けた状態

複数画面で作業するときは画面を分割すると便利かもしれませんね。

## 2.スマートフォン画面のエミュレート

最近はレスポンシブデザインが当たり前になってしまいました。
レスポンシブデザインとは、ページを表示する画面の幅に応じてページのレイアウト変更することです。
皆さんはどうやってスマートフォン用画面のチェックをしていますか？

もちろん実機で確認するのが最も確実ですが、Developer Toolを使うと *スマートフォン画面をエミュレート* することが出来ます。
Elementsというタブの左隣にある、スマートフォンのアイコンをクリックすると、エミュレートが有効になります。
Deviceのセレクトボックスから機種名を選択すると、その機種の画面幅で表示することが出来ます。

また、位置情報や加速度センサーに擬似的な値を設定することができるので、Webアプリの動作チェックにも使えるかもしれません。

![Picture description](/images/2014/12/klis_advent_calender4.png){: .img-thumbnail}

## 3.一発でConsoleを開く

*ふとJavascriptを書きたくなること* 、ありますよね。そんな時のために、Consoleのタブを選択した状態でDeveloper Toolを起動することが出来ます。

Windowsの場合は、

{% highlight bash %}
Ctrl + Shift + J
{% endhighlight %}

Macの場合は、

{% highlight bash %}
Cmd + Opt + J
{% endhighlight %}

で起動することが出来ます。

![Picture description](/images/2014/12/klis_advent_calender5.png){: .img-thumbnail}

というわけで、 *楽しいGoogle Chromeの使い方* でした。

Google Chromeを使い倒して最高のクリスマスをお過ごし下さい。

この投稿は
[Klis Advent Calendar](http://www.adventar.org/calendars/704){:target="blank"}
20日目の記事です。
