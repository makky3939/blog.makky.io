---
layout: post
title:  "JRubyで怒られるときの対処法"
date:   2015-02-13 09:54:12
category: jruby
---

以下の様なエラーが出るときの対処法です。

{% highlight bash %}
OpenSSL::Cipher::CipherError (Illegal key size: possibly you need to install Java Cryptography Extension (JCE) Unlimited Strength Jurisdiction Policy Files for your JRE)
{% endhighlight %}

----

## 対処法
まず、

{% highlight bash %}
http://www.oracle.com/technetwork/java/javase/downloads/jce8-download-2133166.html
{% endhighlight %}
をダウンロードします。

そして、以下のディレクトリに移動します。

{% highlight bash %}
/Library/Java/JavaVirtualMachines/jdk1.8.0_31.jdk/Contents/Home/jre/lib/security/
{% endhighlight %}

バージョン等は自分の環境に合わせて変更してください。
このディレクトリに、先ほどダウンロードしたファイルを配置します。
既に同じファイル名のファイルが存在するので、上書きすることになります。
既存のファイルの名前の変更するなどして、復旧できるようにしておきましょう。
