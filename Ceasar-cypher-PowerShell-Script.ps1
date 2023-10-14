$payload = "11D2B0490CFB1AFB85F3BB7E6594EA09BFB21B913E6B4E5A3D7C40C8AADF01FC4F61BEFC8D535ABAB5E535AEC168"
[string]$output = " "

$payload.ToCharArray() | %{
[string]$thischar = [byte][char]$_ + 12
if($thischar.Length -eq 1)
{
$thischar = [string]"00" + $thischar
$output += $thischar
}
elseif($thischar.Length -eq 2)
{
$thischar = [string]"0" + $thischar
$output += $thischar
}
elseif($thischar.Length -eq 3)
{
$output += $thischar
}
}
$output | clip

