C_TEXT:C284($path)

$path:=Get 4D folder:C485(Database folder:K5:14)+"test_"+String:C10(Milliseconds:C459)+".docx"
WP EXPORT DOCUMENT:C1337([DOC:1]SampleDoc:2;$path;wk docx:K81:277;wk normal:K81:7)
