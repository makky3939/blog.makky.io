---
layout: post
title:  "MySQLに接続する際のエラー"
date:   2014-09-12 18:38:54
category: mysql
---

## 問題

以下の様なエラーが出る場合

{% highlight bash %}
$ mysql -u[user] -p[pass]
ERROR 2002 (HY000): Can't connect to local MySQL server through socket '/var/run/mysql.sock' (2)
{% endhighlight %}


## 解決方法

ホスト名は省略するとlodalhostが指定されます。
明示的に指定しましょう。
自身のコンピュータにアクセスする場合は、127.0.0.1を指定して下さい。

{% highlight bash %}
$ mysql -h[host] -u[user] -p[pass]
Welcome to the MySQL monitor. Commands end with ; or g.

--中略--

Type 'help;' or 'h' for help. Type 'c' to clear the current input statement.

mysql&gt;
{% endhighlight %}

RubyなどのプログラムからMySQLに接続する際に同様のエラーが発生する場合にも、ホスト名を指定することで解決します。
