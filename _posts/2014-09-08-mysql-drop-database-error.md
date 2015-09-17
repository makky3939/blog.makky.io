---
layout: post
title:  "Mysqlでdrop databaseする時のエラー"
date:   2014-09-08 17:21:51
category: mysql
---

## 問題

Mysqlでdrop databaseする時に、こんな感じでエラーが出てしまう場合

{% highlight bash %}
mysql > drop database [db]名
ERROR 1010 (HY000): Error dropping database (can't rmdir './[db名]/', errno: 66)
{% endhighlight %}

## 解決方法

DBのファイルを直接削除します
{% highlight bash %}
cd usr/local/var/mysql/
{% endhighlight %}

※ 上記の操作ではDBの情報が含まれるファイルを直接削除しています。 必要に応じてバックアップ等を行ってください。
