Param(
  [string]$subject,
  [string]$grade,
  [string]$lesson,
  [string]$unit
)
 
$USER = $env:username
  
$STAFFPATH    = "C:\Users\" + $USER + "\Dropbox\Staff Print files\"

$CCSS          = "\CCSS "

$CCSSMATH      = "Math\CCSS Math\New_CC_8-25-2015-01-22 (eVER) STAMPED\Math\Gr."          
$CCML          = "M Lesson "

$FM            = "Math\FM\Focus Math (PRINT FROM HERE!!!)\Level "
$FM2           = "\FM-"

$CCSSELA       = "ELA\CCSS Reading (STAMPLED)\New_CC_8-25-2015-01-22 (eVER) STAMPED\Reading - Gr."
$CCRL          = "R Lesson "

$LF            = "ELA\LF (Watermarked, Stamped)\LF"
$LF2           = " (Use this)\"

$VF            = "ELA\VF (Easy, Print, Stamped, Watermarked)\Grade "
$VF2           = "Vocab Fundamentals - Grade "


$PH            = "ELA\PH\SB\Phonics "
$PH2           = " (With Name, Date, Time)\"

$FR            = "ELA\FR\Level "
$FR2           = "\FR "

$SV            = "ELA\SV\Student Work\Water Marked\TOC\"
$SV2           = "Passwords Science Vocab "

$STAMS         = "Math\STAMS\Water Marked\STAMS- "
$STARS         = "ELA\STARS\Grayscale\Water Marked\STARS "


$DIRECTORY = $null
$FILE = $null

if($subject -eq "ccssm") {
  $DIRECTORY = $STAFFPATH + $CCSSMATH + $grade + $CCSS + $grade + "M - SB\"
  $FILE      = "CCSS " + $grade + $CCML + $lesson + " SB.pdf"
}elseif($subject -eq "fm") {
  $DIRECTORY = $STAFFPATH + $FM + $grade + "\"
  $FILE      = "FM-" + $grade + "-" + $lesson + ".pdf"
}elseif($subject -eq "stams") {
  $DIRECTORY = $STAFFPATH + $STAMS + $grade
  $FILE      = $null
}elseif($subject -eq "ccssr") {
  $DIRECTORY = $STAFFPATH + $CCSSELA + $grade + $CCSS + $grade + "R - SB\"
  $FILE      = "CCSS " + $grade + $CCRL + $lesson + " SB.pdf"
}elseif($subject -eq "lf") {
  $DIRECTORY = $STAFFPATH + $LF + $grade + $LF2 
  $FILE      = "LF" + $grade
}elseif($subject -eq "vf") {
  $DIRECTORY = $STAFFPATH + $VF + $grade + "\"
  $FILE      = $VF2 + $grade + " - "
}elseif($subject -eq "ph") {
  $DIRECTORY = $STAFFPATH + $PH + $grade + $PH2
  $FILE      = "PH" + $grade + "- ("
}elseif($subject -eq "fr") {
  $DIRECTORY = $STAFFPATH + $FR + $grade + "\"
  $FILE      = "FR " + $grade + " - " + $lesson + ".pdf"
}elseif($subject -eq "sv") {
  $DIRECTORY = $STAFFPATH + $SV
  $FILE      = $SV2 + $grade + ".pdf"
}elseif($subject -eq "stars") {
  $DIRECTORY = $STAFFPATH + $STARS + $grade + "\"
  $FILE      = "STARS " + $grade + " - "
}


if($FILE -like '*.pdf') {
  Start-Process -FilePath $DIRECTORY + $FILE
} elseif($DIRECTORY -is "String") {
  ii $DIRECTORY
}

Write-Host $DIRECTORY
Write-Host $FILE

#Start-Process -FilePath "C:\Users\Kudo\Documents\Life\Resumes\LaTeX Resume latest.pdf" -Verb Print -PassThru | %{sleep 10;$_} | kill
