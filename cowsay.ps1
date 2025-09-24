# this will technically be cowthink , which is my favorite one
# maybe the next time i am bored i will figure out multiple cows

# specifies which variables should be set via command line when script is called
param (
	# we must provide the cow with something to speak
	# ... this string will be the first argument on the command line
	# ... but also it may contain spaces
	# ... i don't want the user (literally me) to have to put ""
	[Parameter (Position = 0, ValueFromRemainingArguments = $true)]
	[string[]] $speak_parts
)
$speak = $speak_parts -join " "

# formatting thought bubble to look nice
$padding = 2
# powershell automatically computes string length
$length = $speak.Length + $padding

# let's draw our speech bubble
$top = " " + ("_" * $length)
$middle = "< $speak >"
$bottom = " " + ("-" * $length)

# let's draw our cow
# @ for multi-line string
$cow = @"
        o
         o  ^__^
	    (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
"@

Write-Host $top
Write-Host $middle
Write-Host $bottom
Write-Host $cow
