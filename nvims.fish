set -x items "nvim\nLazyVim"

function nvims
    set selected_value (echo -e $items | fzf --select-1)
    if [ -n "$selected_value" ]
        set -x NVIM_APPNAME $selected_value
        nvim
    end
end
