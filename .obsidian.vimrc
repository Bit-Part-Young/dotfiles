exmap wq obcommand workspace:close
exmap q obcommand workspace:close

nmap ; :

" Have j and k navigate visual lines rather than logical ones
nmap j gj
nmap k gk

"快速跳转
nmap J 5j
nmap K 5k

" Quickly remove search highlights
nmap <F5> :nohl


" Moving to next/prev paragraph
nmap [ {
nmap ] }

" I like using H and L for beginning/end of line
nmap H ^
nmap L $


exmap nextHeading jsfile mdHelpers.js {jumpHeading(true)}
exmap prevHeading jsfile mdHelpers.js {jumpHeading(false)}
nmap ]] :nextHeading
nmap [[ :prevHeading


exmap surround_codeblock surround ` `
map ff :surround_codeblock



" rename file
exmap renameFile obcommand Obsidian-VimEx:file-rename-modal
nmap gr :renameFile

" Emulate Folding https://vimhelp.org/fold.txt.html#fold-commands
exmap togglefold obcommand editor:toggle-fold
nmap zo :togglefold
nmap zc :togglefold
nmap za :togglefold



