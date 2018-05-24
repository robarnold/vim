$env:PATH = "$env:PATH;$PSScriptRoot/Neovim/bin"

function installnvim() {
  New-Item -Path "~/AppData/Local/nvim" -ItemType dir -Force
  $initcontents = @"
set runtimepath^=$PSScriptRoot\vimfiles
let &packpath = &runtimepath
source $PSScriptRoot\init.vim
"@
  Set-Content -Force -NoNewline -Path "~/AppData/Local/nvim/init.vim" -Value "$initcontents"
  $ginitcontents = @"
source $PSScriptRoot/ginit.vim
"@
  Set-Content -Force -NoNewline -Path "~/AppData/Local/nvim/ginit.vim" -Value "$ginitcontents"
}
