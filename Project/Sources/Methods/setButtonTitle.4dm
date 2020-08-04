//%attributes = {}
C_LONGINT:C283($page)

$page:=FORM Get current page:C276
Case of 
	: ($page=1)
		If (Form:C1466.target#"")
			OBJECT SET TITLE:C194(*;"btnPage1";"Set \""+Form:C1466.target+"\" as URL link")
			
			
			  // Set XXX as link to URL
			OBJECT SET ENABLED:C1123(*;"btnPage1";True:C214)
		Else 
			OBJECT SET TITLE:C194(*;"btnPage1";"")
			OBJECT SET ENABLED:C1123(*;"btnPage1";False:C215)
		End if 
		
	: ($page=2)
		OBJECT SET TITLE:C194(*;"btnPage2";"Set \""+_words{_words}+"\" as 4D method link")
		
	: ($page=3)
		OBJECT SET TITLE:C194(*;"btnPage3";"Set \""+Form:C1466.words+"\" as document link")
		
	: ($page=4)
		OBJECT SET TITLE:C194(*;"btnPage4";"Set \""+_bookmarks{_bookmarks}+"\" as bookmark link")
		
		
End case 