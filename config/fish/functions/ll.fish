if command --query lsd
    function ll --wraps='lsd --long --human-readable --group-dirs first'
        lsd --long --git --human-readable --group-dirs first $argv;
    end
end

