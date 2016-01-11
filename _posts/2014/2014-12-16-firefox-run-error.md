---
layout: post
title:  "Firefox起動時のエラーを解決する方法"
date:   2014-12-16 00:07:19
category: firefox
---

## 問題

こんなエラーがでてFirefoxの起動に失敗する場合

{% highlight bash %}
Firefox is already running, but is not responding. To open a new window, you must first close the existing Firefox process, or restart your system.
{% endhighlight %}

## 解決方法

プロファイルが壊れている可能性があるので、プロファイルを削除してしまいます。
次のようなコマンドでプロファイルマネージャにアクセスすることが出来ます。

{% highlight bash %}
firefox -ProfileManager
{% endhighlight %}

※プロファイルを削除すると、ブックマーク等が失われてしまいます。
