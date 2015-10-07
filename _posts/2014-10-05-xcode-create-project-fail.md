---
layout: post
title:  "Xcodeで新しいプロジェクトを作成する際にフリーズして進まない時"
date:   2014-10-05 12:14:12
category: xcode
---

Xcodeで新しいプロジェクトを作成する際にフリーズして進まない時

以下のディレクトリを削除しましょう。

{% highlight bash %}
rm ~/Library/Caches/com.apple.dt.Xcode
rm ~/Library/Preferences/com.apple.Xcode.plist
{% endhighlight %}

ゴミ箱に残っていると解決しないので、完全に削除する必要があります。
