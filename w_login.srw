$PBExportHeader$w_login.srw
forward
global type w_login from window
end type
type sle_2 from singlelineedit within w_login
end type
type st_3 from statictext within w_login
end type
type shl_1 from statichyperlink within w_login
end type
type sle_1 from singlelineedit within w_login
end type
type st_2 from statictext within w_login
end type
type st_1 from statictext within w_login
end type
type ln_1 from line within w_login
end type
type ln_2 from line within w_login
end type
end forward

global type w_login from window
integer width = 1600
integer height = 1160
windowtype windowtype = popup!
long backcolor = 32768
string icon = "AppIcon!"
boolean center = true
event ue_postopen ( )
sle_2 sle_2
st_3 st_3
shl_1 shl_1
sle_1 sle_1
st_2 st_2
st_1 st_1
ln_1 ln_1
ln_2 ln_2
end type
global w_login w_login

event ue_postopen();
// Profile falakdb
SQLCA.DBMS = "ODBC"
SQLCA.AutoCommit = False
SQLCA.DBParm = "ConnectString='DSN=falak;UID=DBA;PWD=DBA'"
CONNECT USING SQLCA;

if sqlca.sqlcode <> 0 then 
	messagebox("Connect","Connection to database failed, ~n"+&
	"Please Contact System Administrator!",exclamation!)
	HALT CLOSE
end if

end event

on w_login.create
this.sle_2=create sle_2
this.st_3=create st_3
this.shl_1=create shl_1
this.sle_1=create sle_1
this.st_2=create st_2
this.st_1=create st_1
this.ln_1=create ln_1
this.ln_2=create ln_2
this.Control[]={this.sle_2,&
this.st_3,&
this.shl_1,&
this.sle_1,&
this.st_2,&
this.st_1,&
this.ln_1,&
this.ln_2}
end on

on w_login.destroy
destroy(this.sle_2)
destroy(this.st_3)
destroy(this.shl_1)
destroy(this.sle_1)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.ln_1)
destroy(this.ln_2)
end on

event open;sle_1.setfocus( )
title = "Sistem Informasi"

setpointer(AppStarting!)
//SetPosition(TopMost!)

postEvent("ue_postopen")

end event

type sle_2 from singlelineedit within w_login
integer x = 462
integer y = 704
integer width = 786
integer height = 100
integer taborder = 20
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Verdana"
long textcolor = 16777215
long backcolor = 32768
boolean border = false
boolean password = true
end type

type st_3 from statictext within w_login
integer x = 1019
integer y = 860
integer width = 210
integer height = 52
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Verdana"
boolean italic = true
boolean underline = true
long textcolor = 33554432
long backcolor = 32768
string text = "Close"
alignment alignment = right!
boolean focusrectangle = false
end type

event clicked;SetPointer(Cross!)
close(parent)
end event

type shl_1 from statichyperlink within w_login
integer x = 471
integer y = 860
integer width = 251
integer height = 64
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Verdana"
boolean italic = true
boolean underline = true
string pointer = "HyperLink!"
long backcolor = 32768
string text = "Sign Up"
alignment alignment = right!
boolean focusrectangle = false
end type

type sle_1 from singlelineedit within w_login
integer x = 462
integer y = 448
integer width = 786
integer height = 100
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Verdana"
long textcolor = 16777215
long backcolor = 32768
boolean border = false
end type

type st_2 from statictext within w_login
integer x = 617
integer y = 628
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Verdana"
long textcolor = 33554432
long backcolor = 32768
string text = "Password"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_1 from statictext within w_login
integer x = 617
integer y = 388
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Verdana"
long textcolor = 33554432
long backcolor = 32768
string text = "User Name"
alignment alignment = center!
boolean focusrectangle = false
end type

type ln_1 from line within w_login
long linecolor = 33554432
integer linethickness = 4
integer beginx = 462
integer beginy = 564
integer endx = 1216
integer endy = 564
end type

type ln_2 from line within w_login
long linecolor = 33554432
integer linethickness = 4
integer beginx = 462
integer beginy = 848
integer endx = 1216
integer endy = 848
end type

