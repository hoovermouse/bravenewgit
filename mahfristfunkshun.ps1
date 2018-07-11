Function get-mahfristfunkshun
$funkyconf = get-mahfristfunkshun
{
    param([string] $stuff = $funkyconf.stuff, 
          [string[]] $moarstuff = $funkyconf.moarstuff)
}

Write-Host "Oh hai, i herd u like $stuff and $moarstuff"


