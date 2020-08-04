Case of 
		
	: (Form event code:C388=On Load:K2:1) | (Form event code:C388=On Page Change:K2:54)
		
		
		ALL RECORDS:C47([DOC:1])
		If (FORM Get current page:C276=1)
			ORDER BY:C49([DOC:1];[DOC:1]Order:4;>)  // FIRST ONE
		Else 
			ORDER BY:C49([DOC:1];[DOC:1]Order:4;<)  // LAST ONE
		End if 
		
		
		WParea1:=WP New:C1317
		WParea2:=WP New:C1317
		
		WParea1:=[DOC:1]SampleDoc:2
		WParea2:=[DOC:1]Description:6
		
		If (Form event code:C388=On Load:K2:1)
			
			Form:C1466.trace:=False:C215
			
			ARRAY TEXT:C222(_fonts;0)
			ARRAY TEXT:C222(_fontStyles;0)
			ARRAY TEXT:C222(_fontNames;0)
			ARRAY LONGINT:C221(_fontSizes;0)
			ARRAY TEXT:C222(_fontColors;0)
			ARRAY TEXT:C222(_TextAlign;0)
			
			ARRAY LONGINT:C221(_fontColors_l;0)
			ARRAY LONGINT:C221(_TextAlign_l;0)
			
			FONT LIST:C460(_fonts)
			FONT STYLE LIST:C1362(_fonts{1};_fontStyles;_fontNames)
			
			COLLECTION TO ARRAY:C1562(New collection:C1472(12;14;16;18;20);_fontSizes)
			
			APPEND TO ARRAY:C911(_fontColors;"Red")
			APPEND TO ARRAY:C911(_fontColors;"Green")
			APPEND TO ARRAY:C911(_fontColors;"Blue")
			APPEND TO ARRAY:C911(_fontColors;"Orange")
			APPEND TO ARRAY:C911(_fontColors;"Black")
			APPEND TO ARRAY:C911(_fontColors;"Grey")
			APPEND TO ARRAY:C911(_fontColors;"Purple")
			
			
			APPEND TO ARRAY:C911(_fontColors_l;0x00C00000)
			APPEND TO ARRAY:C911(_fontColors_l;0xA000)
			APPEND TO ARRAY:C911(_fontColors_l;0x00A0)
			APPEND TO ARRAY:C911(_fontColors_l;0x00FF8000)
			APPEND TO ARRAY:C911(_fontColors_l;0)
			APPEND TO ARRAY:C911(_fontColors_l;0x00808080)
			APPEND TO ARRAY:C911(_fontColors_l;0x00800080)
			
			APPEND TO ARRAY:C911(_TextAlign;"Left")
			APPEND TO ARRAY:C911(_TextAlign;"Center")
			APPEND TO ARRAY:C911(_TextAlign;"Right")
			APPEND TO ARRAY:C911(_TextAlign;"Justify")
			
			APPEND TO ARRAY:C911(_TextAlign_l;wk left:K81:95)
			APPEND TO ARRAY:C911(_TextAlign_l;wk center:K81:99)
			APPEND TO ARRAY:C911(_TextAlign_l;wk right:K81:96)
			APPEND TO ARRAY:C911(_TextAlign_l;wk justify:K81:100)
			
			_fonts:=1
			_fontNames:=1
			_fontStyles:=1
			
			_fontSizes:=1
			_fontColors:=1
			_TextAlign:=1
			_fontColors_l:=1
			_TextAlign_l:=1
			
		End if 
		
		
		If (FORM Get current page:C276=1)
			OBJECT SET VISIBLE:C603(*;"WParea1";False:C215)
			OBJECT SET VISIBLE:C603(*;"StyleSheetContent";False:C215)
			OBJECT SET VISIBLE:C603(*;"bTrace";False:C215)
			OBJECT SET VISIBLE:C603(*;"bReset";False:C215)
		Else 
			OBJECT SET VISIBLE:C603(*;"WParea1";True:C214)
			OBJECT SET VISIBLE:C603(*;"StyleSheetContent";True:C214)
			OBJECT SET VISIBLE:C603(*;"bTrace";True:C214)
			OBJECT SET VISIBLE:C603(*;"bReset";True:C214)
		End if 
		
		
End case 