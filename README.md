# nvims

`nvims` is a fish shell function that allows you to quickly change the neovim configs faster

## Important
You Need Neovim Nightly Version

## Installation

To use the `nvims` function, add it to your fish configuration file (usually located at `~/.config/fish/config.fish`). You can do this by copying and pasting the code from the `config.fish` file in this repository:

```fish
set -x items "nvim\nLazyVim\nvim"

function nvims
  set selected_value (echo -e $items | fzf --select-1)
  if [ -n "$selected_value" ]
    set -x NVIM_APPNAME $selected_value
    nvim
  end
end
```

## Usage

To use the `nvims` function, simply type `nvims` in your terminal. This will open fzf, which will display a list of options to choose from: `nvim`, `LazyVim`, and `vim`. Selecting an option will set the `NVIM_APPNAME` environment variable and launch the corresponding editor.

Once the editor is open, you can use it as you normally would. For example, you can use the `:e` command to open a specific file.

## Customization

You can customize the options displayed by `nvims` by modifying the `items` variable in the `nvims` function. For example, you could add an option to open `emacs` by setting `items` to:

```fish
set -x items "nvim\nLazyVim\nLunarVim" # your config folder names
```

You can also modify the code to change the editor launched by `nvims`. For example, you could modify the `nvims` function to launch `emacs` instead of `nvim` by changing the `nvim` command to Anything.

## License

This code is licensed under the [MIT License](LICENSE).
