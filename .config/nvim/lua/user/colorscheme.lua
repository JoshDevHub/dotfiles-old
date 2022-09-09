vim.cmd [[
  augroup _my_colors
    autocmd!
    autocmd ColorScheme * highlight rubyTSLabel guifg=#bd93f9
                      \ | highlight rubyTSSymbol guifg=#bd93f9
                      \ | highlight rubyTSException guifg=#ff79c6
                      \ | highlight TSType guifg=#8be9fd
                      \ | highlight TSPunctSpecial guifg=#ff79c6
                      \ | highlight rubySymbol guifg=#bd93f9
                      \ | highlight PreProc guifg=#ff79c6
                      \ | highlight rubyControl guifg=#ff79c6
                      \ | highlight rubyStringDelimiter guifg=#f1fa8c
                      \ | highlight rubyHeredocDelimiter guifg=#f1fa8c
                      \ | highlight rubyBoolean guifg=#bd93f9
                      \ | highlight rubyInterpolationDelimiter guifg=#ff79c6
                      \ | highlight javascriptTSProperty guifg=#bd93f9
                      \ | highlight javascriptTSConstructor guifg=#8be9fd
                      \ | highlight javascriptTSKeywordFunction guifg=#ff79c6
                      \ | highlight javascriptTSConstBuiltin guifg=#bd93f9
                      \ | highlight htmlTSTag guifg=#ff79c6
                      \ | highlight htmlTSTitle guifg=#f8f8f2
                      \ | highlight htmlEndTag guifg=#ff79c6
                      \ | highlight htmlTSText guifg=#f8f8f2
                      \ | highlight htmlArg guifg=#50fa7b
                      \ | highlight htmlTSTagAttribute guifg=#50fa7b
                      \ | highlight htmlh1 guifg=#f8f8f2
                      \ | highlight htmlh2 guifg=#f8f8f2
                      \ | highlight htmlh2 guifg=#f8f8f2
                      \ | highlight c_sharpTSCharacter guifg=#f1fa8c
                      \ | highlight c_sharpTSNamespace guifg=#8be9fd
                      \ | highlight c_sharpTSTypeBuiltin guifg=#ff79c6
                      \ | highlight markdownTSTitle guifg=#bd93f9
                      \ | highlight markdownTSPunctSpecial guifg=#bd93f9
                      \ | highlight markdown_inlineTSTextReference guifg=#ff79c6
                      \ | highlight markdown_inlineTSURI guifg=#8be9fd
                      \ | highlight Normal guibg=none
  augroup end
]]

vim.cmd "colorscheme dracula"
