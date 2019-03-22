
tell application "iTerm"
    set newWindow to (create window with default profile)

    # Split pane
    tell current session of newWindow
        split vertically with default profile
    end tell

    # Exec commands
    tell first session of current tab of newWindow
        write text "pianobar"
    end tell
    tell second session of current tab of newWindow
        write text "~/scripts/watch_bluetooth_buttons.sh"
    end tell
end tell
