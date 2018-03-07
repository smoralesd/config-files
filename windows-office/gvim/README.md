## Download gvim

Windows installer [here](https://www.vim.org/download.php#pc)

## Replace _vimrc

- Go to $VIM, usually $VIM=C:\Program Files (x86)\Vim
- Make a backup of the original _vimrc
    - Rename the file to _vimrc.backup
- Create a Symbolic Link
    - ```New-Item -ItemType SymbolicLink -Name _vimrc -Target $HOME\Repos\config-files\windows-office\gvim\vimrc```
## Install vim.plug and plugins
This is the [site](https://github.com/junegunn/vim-plug)
- run install-vin-plug.ps1
- Install plugins
    - Open vim
    - Execute:
        - ```PlugInstall```
