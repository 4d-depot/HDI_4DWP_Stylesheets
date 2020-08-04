//%attributes = {}

C_COLLECTION:C1488($colParagraphs)
C_LONGINT:C283($i)
C_OBJECT:C1216($paragraph)
C_OBJECT:C1216($stylesheetOne;$stylesheetTwo)

  // Apply to Odd or Even paragraphs

$colParagraphs:=WP Get elements:C1550(WParea1;wk type paragraph:K81:191)

$stylesheetOne:=WP Get style sheet:C1656(WParea1;"Odd")
$stylesheetTwo:=WP Get style sheet:C1656(WParea1;"Even")

$i:=1
For each ($paragraph;$colParagraphs)
	If (($i%2)=0)
		WP SET ATTRIBUTES:C1342($paragraph;wk style sheet:K81:63;$stylesheetTwo)
	Else 
		WP SET ATTRIBUTES:C1342($paragraph;wk style sheet:K81:63;$stylesheetOne)
	End if 
	$i:=$i+1
End for each 

  // Note : style sheet names could be used too with WP SET ATTRIBUTES
  // but errors would occur if style sheets do not exist.
  // When using objets, no error occurs even if the object is NULL
