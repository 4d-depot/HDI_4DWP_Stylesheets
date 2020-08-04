WParea1:=WP New:C1317
WParea2:=WP New:C1317

ALL RECORDS:C47([DOC:1])
If (FORM Get current page:C276<5)
	ORDER BY:C49([DOC:1];[DOC:1]Order:4;>)
Else 
	ORDER BY:C49([DOC:1];[DOC:1]Order:4;<)
End if 

WParea1:=[DOC:1]SampleDoc:2
WParea2:=[DOC:1]Description:6
