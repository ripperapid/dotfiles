let load_vundle_config = "source " . resolve(expand('~/.vimrc')) . '_vundle'
let load_common_config = "source " . resolve(expand('~/.vimrc')) . '_common'

" Look for Vundle installation
if filereadable(expand('~/.vim/bundle/Vundle.vim/README.md'))
    exec load_vundle_config
else

    " Setup basic configuration
    exec load_common_config
    colorscheme elflord

    " Create function to install Vundle and plugins
    function! VundleInstall()
        echo "Installing Vundle..."
        silent !mkdir -p ~/.vim/bundle
        silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
        exec load_vundle_config
        PluginInstall
        echo "Restart Vim"
    endfunc
endif
