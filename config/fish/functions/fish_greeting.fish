function fish_greeting
    if not set -q fish_greeting
        if command --query pokemon-colorscripts && tty | ! grep tty > /dev/null
            pokemon-colorscripts --no-title --random 1-5
        else
            set -l line (_ 'Welcome to °<><, the friendly interactive shell')
            set -g fish_greeting "$line"
        end
    end

    if set -q fish_private_mode
        set -l line (_ "fish is running in private mode, history will not be persisted.")
        if set -q fish_greeting[1]
            set -g fish_greeting $fish_greeting\n$line
        else
            set -g fish_greeting $line
        end
    end

    # The greeting used to be skipped when fish_greeting was empty (not just undefined)
    # Keep it that way to not print superfluous newlines on old configuration
    test -n "$fish_greeting"
    and echo $fish_greeting
end
