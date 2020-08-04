//%attributes = {}
  //$1 : le nom de l’objet(C_TEXT)
  //$2 : objet document WP(C_OBJECT)(référençant le même doc que celui de l’objet form)



C_TEXT:C284($1)
C_OBJECT:C1216($2)

C_TEXT:C284($area;$cr;$text;$linkText)
C_OBJECT:C1216($link)

$area:=$1
$link:=$2

$linkText:=WP Get text:C1575($link.range;wk expressions as value:K81:255)

$cr:=Char:C90(Carriage return:K15:38)
$text:="The method 'myAlert' has been called. It received…"+$cr+$cr
$text:=$text+"$1: "+$area+" (name of the area inside the form)"+$cr
$text:=$text+"$2: $link (the link as an object)"+$cr+$cr

$text:=$text+"Parameter: \""+$link.parameter+"\" (From $link.parameter)"+$cr
$text:=$text+"Text: \""+$linkText+"\" (From $link.range)"+$cr

ALERT:C41($text)

