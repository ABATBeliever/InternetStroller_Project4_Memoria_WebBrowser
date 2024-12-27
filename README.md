# InternetStroller Memoria

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Version](https://img.shields.io/badge/version-1.6.0.0-green.svg)
![Version](https://img.shields.io/badge/Language-HSP3.6-yellow.svg)

## 概要
InternetStrollerMemoria(ISMemoria)はWebViewを利用したHSP製ブラウザです。

MicrosoftEdgeと比べてUIや、ブラウジング以外の機能が単純なため極めて軽量です。

USBメモリなどに入れて「インターネットを散歩」しましょう！

(Strollerはベビーカーを指す名詞ですが、命名当時は中学生だったので知りませんでした。Stroll+er)

ブラウジング性能はWebView2のためEdge水準で、RSSや自作スクリプト、PDF書き出しなどの機能があります。

逆に、パスワードマネージャーやVPNなどはありません。

全ての設定と履歴は同ディレクトリに生成されます。

高DPIやMDIなどいろいろサポートしているので、ゲーミングPCから小型タブレットまで。

## 目次
- [インストール](#インストール)
- [使い方](#使い方)
- [貢献](#貢献)
- [依存関係](#依存関係)
- [公式サイト](https://abatbeliever.net/InternetStroller/)

## インストール
インストールは不要です。すべての設定や履歴はexeと同じディレクトリに生成され、そのフォルダを削除するだけでアンインストール可能です。

## 使い方
exeを起動します。

## 貢献
issue、HSPコンテスト2024、[Twitter](https://x.com/abatbeliever)へ。

## 依存関係
[HSP3でWebView](https://blog.goo.ne.jp/hiro239415/e/5041aec497e02427c2b123aef07977e3)

[WebView2Loader.dll](https://www.nuget.org/packages/Microsoft.Web.WebView2)

[hspinets.dll](https://hsp.moe/#hspinet)

[文字列の置換コード](https://archive.kerupani129.net/blog/posts/hsp-%E6%96%87%E5%AD%97%E5%88%97%E7%BD%AE%E3%81%8D%E6%8F%9B%E3%81%88-%E3%81%A7%E3%81%8D%E3%82%8B%E4%BA%BA%E3%81%AF%E3%81%A7%E3%81%8D%E3%82%8B%E3%81%A8%E6%80%9D%E3%81%86%E3%81%91%E3%81%A9%E3%81%A7/)

[バルーン通知](https://hsp.tv/play/pforum.php?mode=pastwch&num=47647)

[UserAgent](https://hsp.tv/play/pforum.php?mode=all&num=100931)

[iniモジュール,許諾の元改造](https://dev.onionsoft.net/seed/info.ax?id=2367)

[マルチダイアログ](https://hsp.moe/#taskdialog)

[複数ファイル対応型dialog](https://hsp.tv/play/pforum.php?mode=all&num=101616)

[ダークモード対応](https://hsp.tv/play/pforum.php?mode=all&num=100064)

[高DPI](https://learn.microsoft.com/ja-jp/windows/win32/api/winuser/nf-winuser-setprocessdpiaware?redirectedfrom=MSDN)

[HotSoupProcessor3](https://hsp.tv/)
