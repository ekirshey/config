Set-PSReadLineOption -PredictionSource None
function prompt {
    $ESC = [char]27
    $currentDir = (Convert-Path .)

    if ($currentDir.Contains($HOME)) {
        $currentDir = $currentDir.Replace($HOME, "~")
    }

    "$ESC[32m$currentDir$ESC[0m`r`n> "
}
