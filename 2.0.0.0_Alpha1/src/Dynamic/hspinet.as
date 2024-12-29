;
;	hspinet.dll header
;
#ifndef __hspinet__
#define __hspinet__

#uselib "hspinet.dll"
#func netinit netinit 0
#func netterm netterm $100
#func netexec netexec 1
#func netmode netmode 1
#func netsize netsize 1
#func neterror neterror $202
#func neturl neturl 6
#func netdlname netdlname 6
#func netproxy netproxy 6
#func netagent netagent 6
#func netheader netheader 6
#func netrequest netrequest 6
#func netfileinfo netfileinfo $202

#func netgetv netgetv $202
#func netrequest_get netrequest_get $202
#func netrequest_post netrequest_post $202
#func netrequest_put netrequest_put $202
#func netrequest_delete netrequest_delete $202

#func filecrc filecrc $202
#func filemd5 filemd5 $202

#func ftpopen ftpopen $202
#func ftpclose ftpclose $202
#func ftpresult ftpresult $202
#func ftpdir ftpdir $202
#func ftpdirlist ftpdirlist $202
#func ftpdirlist2 ftpdirlist2 $202
#func ftpcmd ftpcmd $202
#func ftprmdir ftprmdir $202
#func ftpmkdir ftpmkdir $202
#func ftpget ftpget $202
#func ftpput ftpput $202
#func ftprename ftprename $202
#func ftpdelete ftpdelete $202

#func varmd5 varmd5 $202
#func b64encode b64encode $202
#func b64decode b64decode $202
#func rc4encode rc4encode $202
#func urlencode urlencode $202
#func urldecode urldecode $202

#func jsonopen jsonopen $202
#func jsonclose jsonclose $202
#func jsonout jsonout $202
#func jsongetobj jsongetobj $202
#func jsongeti jsongeti $202
#func jsongets jsongets $202
#func jsonnext jsonnext $202
#func jsonnewobj jsonnewobj $202
#func jsonputs jsonputs $202
#func jsonputi jsonputi $202
#func jsonsetprm jsonsetprm $202
#func jsondelobj jsondelobj $202
#func jsonnkf jsonnkf $202

#func nkfcnv nkfcnv $202
#func nkfguess nkfguess $202
#func GetNkfVersion "GetNkfVersion" var
#func SetNkfOption "SetNkfOption" sptr
#func NkfConvert "NkfConvert" var,sptr
#func ToHankaku "ToHankaku" var
#func ToZenkakuKana "ToZenkakuKana" var,sptr
#func EncodeSubject "EncodeSubject" var,sptr

#enum INET_MODE_NONE = 0
#enum INET_MODE_READY
#enum INET_MODE_REQUEST
#enum INET_MODE_REQSEND
#enum INET_MODE_DATAWAIT
#enum INET_MODE_DATAEND
#enum INET_MODE_INFOREQ
#enum INET_MODE_INFORECV
#enum INET_MODE_FTPREADY
#enum INET_MODE_FTPDIR
#enum INET_MODE_FTPREAD
#enum INET_MODE_FTPWRITE
#enum INET_MODE_FTPCMD
#enum INET_MODE_FTPRESULT
#enum INET_MODE_ERROR

#func getenv getenv2 $202
#func getenvprm getenvprm $202
#func getctime getctime $202

#func netgetv_data "_netgetv_data@4" var			// データを受け取る
#cfunc netgetv_size "_netgetv_size@0"				// 必要なバッファサイズ
#cfunc netgetv_requestsize "_netgetv_requestsize@0"	// 受信サイズ
#cfunc netgetv_ptr "_netgetv_ptr@0"					// ポインタ取得（使わない）

#func netrequest_post2 "_netrequest_post2@12" str,var,int
#func netrequest_put2 "_netrequest_put2@12" str,var,int

#module

#deffunc netload str _p1

	netrequest@ _p1

	res=0
	repeat
	netexec@ res
	if res : break
	await 50
	loop

	if res > 0 : return

	estr=0
	neterror@ estr
	dialog "エラー:"+estr
	return

#global

#endif

