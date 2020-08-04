//%attributes = {}
C_TEXT:C284($1;$stylesheetName)

C_OBJECT:C1216($charSel)
C_OBJECT:C1216($stylesheet)

$stylesheetName:=$1

$stylesheet:=WP Get style sheet:C1656(WParea1;$stylesheetName)

$charSel:=WP Selection range:C1340(*;"WParea1")

If (Not:C34(Shift down:C543))
	WP SET ATTRIBUTES:C1342($charSel;wk style sheet:K81:63;$stylesheet)
Else 
	WP RESET ATTRIBUTES:C1344($charSel;wk style sheet:K81:63)
End if 

