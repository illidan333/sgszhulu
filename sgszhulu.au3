#RequireAdmin

Local $sAnswer = InputBox("Question", "请输入逐鹿体力数量")

WinActivate("[CLASS:CefBrowserWindow]")

Dim $tiaoZhan = $sAnswer

Dim saoDang = 0
;enterZhuluMode()

For $i = $tiaoZhan To 1 Step -1
   levelx("tiaoZhan")
Next
;For $i = $saoDang To 1 Step -1
;   levelx("saoDang")
;Next

Func clickOnSomething($x, $y)
   MouseClick("left", $x, $y);click on the task menu
   Sleep ( 1000 );wait 1 sec to load the UI
EndFunc

Func levelx($style)
   If $style == "tiaoZhan" Then
	  Sleep ( 1000 );wait 1 sec to load zhulu mode main page
	  MouseClick("left", 1620, 609);click on the button to challenge level x
	  Sleep ( 1000 );wait 1 sec to load level
	  MouseClick("left", 1427,813);click on the button to start level
	  clickOnSomething(1379, 299);try to close energy buying window just in case we run out of energy
	  clickOnSomething(1563, 211);try to close the challenge window just in case we run out of energy
	  Sleep ( 60000 );wait 1 min to finish the game
	  MouseClick("left", 1370, 864);click on a blank spot to proceed
	  clickOnSomething(959, 870);click on the button to continue (this is a sweep point that won't hit jiangling even if we are running out of energy)
   ElseIf $style == "saoDang" Then
	  Sleep ( 1000 );wait 1 sec to load zhulu mode main page
	  MouseClick("left", 1676, 612);click on the button to saodang level x
	  Sleep ( 1000 );wait 1 sec to load level
	  MouseClick("left", 1231, 539);click on the button to choose jiangling
	  Sleep ( 1000 );wait 1 sec to load level page
	  MouseClick("left", 1059, 491);choose the 3rd jiangling
	  Sleep ( 1000 );wait 1 sec to load level page
	  MouseClick("left", 959, 784);hit ok
	  Sleep ( 1000 );wait 1 sec to load level page
	  MouseClick("left", 1333, 826);start saodang
	  clickOnSomething(1379, 299);try to close energy buying window just in case we run out of energy
	  Sleep ( 1000 );wait 1 sec to load level page
	  MouseClick("left", 963, 793);hit ok
	  Sleep ( 1000 );wait 1 sec to load level page
	  MouseClick("left", 1560, 210);close the saodang page
	  Sleep ( 1000 );wait 1 sec to load level page
   EndIf
EndFunc

Func ProgressLevel()
   Sleep ( 1000 );wait 1 sec to load zhulu mode main page
   MouseClick("left", 1560, 836);click on the button to challenge the next level
   Sleep ( 1000 );wait 1 sec to load level
   MouseClick("left", 1427, 813);click on the button to start level
   Sleep ( 30000 );wait 0.5 min to finish the game
   MouseClick("left", 919, 855);click on a blank spot to proceed
   MouseClick("left", 956, 850);click on the button to continue
   Sleep ( 1000 );wait 1 sec to load level 100
EndFunc

Func enterZhuluMode()
   MouseClick("left", 1130, 664);click on the zhulu mode
   Sleep ( 4000 );wait 4 sec to load the zhulu mode
   MouseClick("left", 1371, 867);click on a blank spot to by pass the video
   MouseClick("left", 1025, 150);click on hero mode
   MouseClick("left", 374, 415);click on zhanggong mode
   MouseClick("left", 681, 401);click on first 5 level
EndFunc