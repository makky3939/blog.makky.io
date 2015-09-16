---
layout: post
title:  "Postgresでテーブルを作成できない時"
date:   2015-02-11 06:58:40
category: postgres
---

Postgresでテーブルを作成する際に以下の様なエラーが出た場合の解決方法を紹介します。

{% highlight bash %}
permission denied to create database
{% endhighlight %}

----

## 解決方法

{% highlight bash %}
alter role USER_NAME login;
alter role USER_NAME createdb;
{% endhighlight %}

のような感じで、USER_NAMEで指定したユーザにテーブルの作成権限を与えることができます。
