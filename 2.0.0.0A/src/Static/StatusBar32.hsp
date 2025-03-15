//ステータスバーの定義
//2024/9/6 窓月らら Discord鯖より

#uselib "user32.dll"
//#func GetWindowRect "GetWindowRect" int, var ISMの定義と衝突するため削除

// ステータスバー作成
#deffunc create_statusbar str _s, local _p
    winobj "msctls_statusbar32",_s,0,$50000000    // ステータスバー
    h_stbar=objinfo_hwnd(stat)                    // ステータスバーのハンドル
    dim _p,4: GetWindowRect h_stbar,_p            // RECT構造体
    return _p(3)-_p(1)                            // 縦サイズをstatに返す
; 複数ウィンドゥで必要なときは h_stbar(ウィンドゥID) でハンドルを管理する

// ステータスバー更新(ウィンドゥサイズが変更されたときに呼ぶ)
#deffunc update_statusbar
    sendmsg h_stbar,$5,0,0
    return

// ステータスバーのテキスト更新
#deffunc set_statusbar int _p1, var _p2
	_p2=cnvwtos(_p2)	//修正(UTF-8でないなら消すこと)
    sendmsg h_stbar,$401,_p1,_p2
    return