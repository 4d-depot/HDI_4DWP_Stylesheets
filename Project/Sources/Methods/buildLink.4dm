//%attributes = {}

Form:C1466.link:=New object:C1471

Case of 
	: (_linkType=1)
		Form:C1466.link.url:=Form:C1466.url
		
	: (_linkType=2)
		
		Form:C1466.link.bookmark:=_bookmarks{_bookmarks}
		
	: (_linkType=3)
		Form:C1466.link.method:=Form:C1466.method
		Form:C1466.link.parameter:=Form:C1466.parameter
		
	: (_linkType=4)
		Form:C1466.link.url:=Form:C1466.document
		
End case 
