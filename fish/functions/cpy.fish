function cpy
    sed -Ez '$ s/\n+$//' | xclip -sel clip
end
