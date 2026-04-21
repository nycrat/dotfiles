osascript -e 'if application "kitty" is running then
    tell application "kitty"
        activate
        tell application "System Events" to keystroke "n" using command down
    end tell
else
    activate application "kitty"
end if'
