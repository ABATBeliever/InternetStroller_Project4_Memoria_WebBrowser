#ifndef MOD_WEBVIEW2_HSP_
#define global MOD_WEBVIEW2_HSP_

#include "user32.as"
#include "kernel32.as"

#ifndef CreateEventExA
#func global CreateEventEx "CreateEventExA" int,int,int,int
#endif // CreateEventExA

#include "ole32.as"

#ifndef SHCreateStreamOnFileEx
#uselib "Shlwapi.dll"
#func global SHCreateStreamOnFileEx "SHCreateStreamOnFileEx" wptr,int,int,int,int,var
#endif // SHCreateStreamOnFileEx

#uselib "combase.dll"
#func global WindowsCreateString       "WindowsCreateString"       wptr,int,var
#func global WindowsDeleteString       "WindowsDeleteString"       int
#func global WindowsGetStringRawBuffer "WindowsGetStringRawBuffer" int,var

#uselib "WebView2Loader.dll"
#func global CreateCoreWebView2EnvironmentWithOptions     "CreateCoreWebView2EnvironmentWithOptions"     wptr,wptr,var,var
#func global CreateCoreWebView2Environment                "CreateCoreWebView2Environment"                int
#func global GetAvailableCoreWebView2BrowserVersionString "GetAvailableCoreWebView2BrowserVersionString" wptr,var
#func global CompareBrowserVersions                       "CompareBrowserVersions"                       wptr,wptr,var

#enum global WV2_EVENT_CAPTURE = 0
#enum global WV2_EVENT_FULLSCREEN
#enum global WV2_EVENT_CREATECTRL
#enum global WV2_EVENT_CREATEENV
#enum global WV2_EVENT_TITLECHANGED
#enum global WV2_EVENT_EXECUTESCRIPT
#enum global WV2_EVENT_NAVIGATIONCOMPLETED
#enum global WV2_EVENT_NAVIGATIONSTARTING
#enum global WV2_EVENT_NEWWINDOW
#enum global WV2_EVENT_PRINTTOPDF
#enum global WV2_EVENT_SOURCECHANGED
#enum global WV2_EVENT_WINDOWCLOSE
#enum global WV2_EVENT_MAX

#enum global WV2_DATA_PT = 0
#enum global WV2_DATA_VT
#enum global WV2_DATA_WP
#enum global WV2_DATA_LP
#enum global WV2_DATA_HWND
#enum global WV2_DATA_EVENT
#enum global WV2_DATA_TOKENL
#enum global WV2_DATA_TOKENH
#enum global WV2_DATA_SIZE

#ifndef MOD_COMCALL_HSP_
#define global MOD_COMCALL_HSP_

#module mod_ComCall
#deffunc ComCall_Init
	if ( codeComCall ){ return }
	dim prm, 3
	dim prm2, 4
	dim codeComCall, 10
	codeComCall(0) = $8bec8b55, $4d8b1045, $ff03eb14, $7d498834, $084d8bfa, $8b018b51, $048b0c55, $c9d0ff90
	codeComCall(8) = $000000c3

	fCCall = varptr(codeComCall)
	VirtualProtect varptr(codeComCall), length(codeComCall) * 4, 0x40, varptr(p1)
	return

#defcfunc CCall int this_, int id_, array prm_, int prms_
	if ( this_ == 0 ){ return 0 }
	prm = this_, id_, varptr(prm_), prms_
	return callfunc(prm, fCCall, 4)

#defcfunc CCall2 int this_, int id_, int prms_, int p1_, int p2_, int p3_, int p4_
	if ( prms_ != 0 ){
		if ( prms_ == 1 ){ prm2 = p1_ }
		else {
		if ( prms_ == 2 ){ prm2 = p1_, p2_ }
		else {
		if ( prms_ == 3 ){ prm2 = p1_, p2_, p3_ }
		else {
		if ( prms_ == 4 ){ prm2 = p1_, p2_, p3_, p4_ }
		}}}
	}
	return CCall(this_, id_, prm2, prms_)
#global
	ComCall_Init
#endif // MOD_COMCALL_HSP_

#module mod_WebView2

#deffunc WebView2_Init
	if ( codeEH ){ return }
	dim codeEH, 139
	codeEH(  0) = $004002b8, $000cc280
	codeEH(  2) = $04c2c033, $00000000
	codeEH(  4) = $04c2c033, $00000000
	codeEH(  6) = $08244c8b, $24748b56, $7c8b5708, $7e831424, $4e89000c, $087e8904, $51571d74, $c71076ff
	codeEH( 14) = $aa1c2444, $ffaaaaaa, $448b0c76, $d0ff2024, $5ec0335f, $85000cc2, $8b0674c9, $50ff5101
	codeEH( 22) = $74ff8504, $57078b06, $ff0450ff, $44c71076, $bbbb1424, $448bbbbb, $d0ff1424, $1046c75f
	codeEH( 30) = $00000000, $c25ec033, $0000000c
	codeEH( 33) = $0824448b, $5575c085, $0c244c8b, $24748b56, $04468908, $39084e89, $1c740c46, $76ff5051
	codeEH( 41) = $2444c710, $aaaaaa18, $0c76ffaa, $1c24448b, $c033d0ff, $000cc25e, $0674c985, $ff51018b
	codeEH( 49) = $76ff0450, $2444c710, $bbbbbb10, $24448bbb, $c7d0ff10, $00001046, $c0330000, $000cc25e
	codeEH( 57) = $5c8b5351, $8b571024, $8310247c, $89000c7f, $2574045f, $18244c8b, $77ff5351, $084f8910
	codeEH( 65) = $c70c77ff, $aa282444, $8baaaaaa, $ff28244c, $c38b5fd1, $0cc2595b, $24448d00, $2444c714
	codeEH( 73) = $cccccc10, $74ff50cc, $44c71c24, $dddd1024, $448bdddd, $44c71824, $00001c24, $d0ff0000
	codeEH( 81) = $2474ff50, $24448b20, $ffd0ff14, $c9331077, $440fc085, $8918244c, $44c7084f, $bbbb1c24
	codeEH( 89) = $448bbbbb, $d0ff1c24, $001047c7, $8b000000, $595b5fc3, $00000cc2
	codeEH( 95) = $0c24448b, $24748b56, $7c8b5708, $7e831024, $7e89000c, $08468904, $57501d74, $c71076ff
	codeEH(103) = $aa1c2444, $ffaaaaaa, $4c8b0c76, $d1ff2024, $5e5fc78b, $ff000cc2, $44c71076, $bbbb1424
	codeEH(111) = $448bbbbb, $d0ff1424, $46c7c78b, $00000010, $c25e5f00, $0000000c
	codeEH(117) = $24748b56, $7c8b5708, $7e831024, $7e89000c, $0846c704, $00000000, $006a1e74, $1076ff57
	codeEH(125) = $1c2444c7, $aaaaaaaa, $8b0c76ff, $ff20244c, $5fc78bd1, $0008c25e, $c71076ff, $bb142444
	codeEH(133) = $8bbbbbbb, $ff142444, $c7c78bd0, $00001046, $5e5f0000, $000008c2

	dim aTmp, 8
	p1 = varptr(SendMessageA) : aTmp = 59, 169, 267, 415, 504
	repeat 5 : lpoke codeEH, aTmp(cnt), p1 : loop
	p1 = varptr(CloseHandle) : aTmp = 106, 205, 354, 442, 531
	repeat 5 : lpoke codeEH, aTmp(cnt), p1 : loop
	lpoke codeEH, 293, varptr(lstrlenW)
	lpoke codeEH, 306, varptr(WindowsCreateString)
	vtHdlIxI = varptr(codeEH(0)), varptr(codeEH(2)), varptr(codeEH(4)), varptr(codeEH(6))
	vtHdlHxI = varptr(codeEH(0)), varptr(codeEH(2)), varptr(codeEH(4)), varptr(codeEH(33))
	vtHdlHxW = varptr(codeEH(0)), varptr(codeEH(2)), varptr(codeEH(4)), varptr(codeEH(57))
	vtHdlHxB = varptr(codeEH(0)), varptr(codeEH(2)), varptr(codeEH(4)), varptr(codeEH(95))
	vtHdlH   = varptr(codeEH(0)), varptr(codeEH(2)), varptr(codeEH(4)), varptr(codeEH(117))
	vtHdl = varptr(vtHdlIxI), varptr(vtHdlHxI), varptr(vtHdlHxW), varptr(vtHdlHxB), varptr(vtHdlH)
	VirtualProtect varptr(codeEH), length(codeEH) * 4, 0x40, varptr(p1)

	dim eVT, WV2_MAXHDL
	eVT(0)  = 4, 0, 1, 1, 0, 2, 0, 0, 0, 3, 0, 0
	return

#deffunc WebView2_EventInit int enumEvent, int hWnd_, int nMsg, array aData
	aData(WV2_DATA_PT) = varptr(aData(WV2_DATA_VT))
	aData(WV2_DATA_VT) = vtHdl(eVT(enumEvent))
	aData(WV2_DATA_EVENT) = enumEvent
	if ( hWnd_ ){
		aData(WV2_DATA_HWND) = hWnd_
		aData(WV2_DATA_EVENT) = nMsg
	}
	else {
		CreateEventEx 0, 0, 0, 0x1F0003
		p1 = stat
		if ( p1 == 0 ){ return 0 }
		aData(WV2_DATA_EVENT) = p1
		aData(WV2_DATA_HWND) = 0
	}
	return

#deffunc WebView2_EventWait array aData
	if ( aData(WV2_DATA_EVENT) == 0 ){ return 0 }
	repeat
		WaitForSingleObject aData(WV2_DATA_EVENT), 100
		if ( stat == 0 || stat != 0x102 ){ break }
		await 10
	loop
	return 1

#deffunc WebView2_AddRef int pv
	return CCall2(pv, 1, 0)

#deffunc WebView2_Release int pv
	return CCall2(pv, 2, 0)

#defcfunc WebView2_CreateEnv
	dim aEnv, WV2_DATA_SIZE
	WebView2_EventInit WV2_EVENT_CREATEENV, 0, 0, aEnv
	ret = 0
	CreateCoreWebView2Environment aEnv
	if ( stat == 0 ){
		WebView2_EventWait aEnv
		if ( aEnv(WV2_DATA_WP) == 0 && aEnv(WV2_DATA_LP) != 0 ){ ret = 1 }
	}
	if ( ret == 0 ){ return 0 }
	return aEnv(WV2_DATA_LP)

#defcfunc WebView2_CreateCtrl int pEnv, int hWnd_
	dim aCtrl, WV2_DATA_SIZE
	WebView2_EventInit WV2_EVENT_CREATECTRL, 0, 0, aCtrl
	ret = 0
	if ( CCall2(pEnv, 3, 2, hWnd_, aCtrl) == 0 ){
		WebView2_EventWait aCtrl
		if ( aCtrl(WV2_DATA_WP) == 0 && aCtrl(WV2_DATA_LP) != 0 ){ ret = 1 }
	}
	if ( ret == 0 ){ return 0 }
	return aCtrl(WV2_DATA_LP)

#defcfunc WebView2_GetView int pCtrl
	if ( CCall2(pCtrl, 25, 1, varptr(p1)) ){ return 0 }
	return p1

#deffunc WebView2_Size int pCtrl, int x, int y, int w, int h
	if ( CCall2(pCtrl, 6, 4, x, y, w, h) ){ return 0 }
	return 1

#deffunc WebView2_Navigate int pView, str sUrl
	sdim bufTmp, (strlen(sUrl) + 1) * 2
	cnvstow bufTmp, sUrl
	if ( CCall2(pView, 5, 1, varptr(bufTmp)) ){ return 0 }
	return 1

#defcfunc WebView2_CnvpWtoS int pWStr, var vBuf
	if ( pWStr == 0 ){ return 0 }
	sdim bufTmp, (lstrlenW(pWStr) + 1) * 2
	lstrcpyW varptr(bufTmp), pWStr
	vBuf = cnvwtos(bufTmp)
	bufTmp = 0
	return 1

#defcfunc WebView2_CnvWinStr int pWinStr, var vBuf
	if ( pWinStr == 0 ){ return 0 }
	WindowsGetStringRawBuffer pWinStr, p1
	p1 = stat
	ret = 1
	if ( WebView2_CnvpWtoS(p1, vBuf) == 0 ){ ret = 0 }
	if ( p1 ){ WindowsDeleteString pWinStr }
	return ret

#defcfunc WebView2_GetMonitorRect int hWnd_, array aRect
	dim pmi, 10 : pmi(0) = 40
	MonitorFromWindow hWnd_, 1
	if ( GetMonitorInfo(stat, varptr(pmi)) == 0 ){ return 0 }
	pmi(3) -= pmi(1) : pmi(4) -= pmi(2)
	dim aRect, 4
	CopyRect varptr(aRect), varptr(pmi(1))
	return 1

#defcfunc WebView2_GetWndRect int hWnd_, array aRect
	dim wndPl, 11 : wndPl(0) = 44
	if ( GetWindowPlacement(hWnd_, varptr(wndPl)) == 0 ){ return 0 }
	dim aRect, 4
	wndPl(9) -= wndPl(7) : wndPl(10) -= wndPl(8)
	CopyRect varptr(aRect), varptr(wndPl(7))
	return 1

#deffunc WebView2_InitWnd int wndID
	mref bmscr, 96 + wndID
	hWndTmp = bmscr(13)
	if ( WebView2_GetMonitorRect(hWndTmp, rcMon) == 0 ){ return 0 }
	if( WebView2_GetWndRect(hWndTmp, rcWnd) == 0 ){ return 0 }
	screen wndID, rcMon(2), rcMon(3), 2, , , rcWnd(2), rcWnd(3)
	GetWindowLong hwnd, -16
	SetWindowLong hwnd, -16, stat | 0x50000
	SetWindowPos hwnd, 0, 0, 0, 0, 0, 0x63
	return 1

#global

	WebView2_Init

#endif // MOD_WEBVIEW2_HSP_