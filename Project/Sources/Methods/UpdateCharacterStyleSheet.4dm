//%attributes = {}
C_TEXT:C284($1;$stylesheetName)
C_OBJECT:C1216($styleSheet)

$stylesheetName:=$1

$styleSheet:=WP Get style sheet:C1656(WParea1;$stylesheetName)
If ($styleSheet=Null:C1517)
	  // if the stylesheet does not exist, let's create it
	$styleSheet:=WP New style sheet:C1650(WParea1;wk type character:K81:296;$stylesheetName)
End if 

WP SET ATTRIBUTES:C1342($styleSheet;wk font:K81:69;_fontNames{_fontNames})
WP SET ATTRIBUTES:C1342($styleSheet;wk font size:K81:66;_fontSizes{_fontSizes})
WP SET ATTRIBUTES:C1342($styleSheet;wk text color:K81:64;_fontColors_l{_fontColors_l})


