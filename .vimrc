if has("unix")
    let load_vimplug_config = "source " . resolve(expand('~/.vimrc')) . '_vimplug'
    let load_common_config = "source " . resolve(expand('~/.vimrc')) . '_common'
    let load_plugin_config = "source " . resolve(expand('~/.vimrc')) . '_plugin'
    let load_neovim_config = "source " . resolve(expand('~/.vimrc')) . '_neovim'
endif

" Look for vim-plug installation
if filereadable(expand('~/.vim/autoload/plug.vim'))
    exec load_plugin_config
    exec load_common_config
    exec load_neovim_config
else
    " Setup basic configuration
    exec load_common_config
    colorscheme elflord

    " Create function to install Vundle and plugins
    function! VimPlugInstall()
        echo "Installing Vim-plug..."
        silent !mkdir -p ~/.vim/autoload
        execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
        exec load_plugin_config
        exec load_neovim_config
        PluginInstall
        echo "Restart Vim"
    endfunc
endif
