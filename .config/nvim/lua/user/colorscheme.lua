vim.cmd [[
  augroup _my_colors
    autocmd!
    autocmd ColorScheme * highlight @label guifg=#bd93f9
                      \ | highlight @symbol guifg=#bd93f9
                      \ | highlight @exception guifg=#ff79c6
                      \ | highlight TSType guifg=#8be9fd
                      \ | highlight @punctuation.special guifg=#ff79c6
                      \ | highlight PreProc guifg=#ff79c6
                      \ | highlight rubyStringDelimiter guifg=#f1fa8c
                      \ | highlight rubyHeredocDelimiter guifg=#f1fa8c
                      \ | highlight rubyBoolean guifg=#bd93f9
                      \ | highlight rubyInterpolationDelimiter guifg=#ff79c6
                      \ | highlight javascriptTSProperty guifg=#bd93f9
                      \ | highlight javascriptTSConstructor guifg=#8be9fd
                      \ | highlight @keyword.function guifg=#ff79c6
                      \ | highlight @function.call guifg=#50fa7b
                      \ | highlight @method.call guifg=#50fa7b
                      \ | highlight javascriptTSConstBuiltin guifg=#bd93f9
                      \ | highlight typescriptTSKeywordFunction guifg=#ff79c6
                      \ | highlight typescriptTSProperty guifg=#bd93f9
                      \ | highlight Keyword guifg=#ff79c6
                      \ | highlight @tag guifg=#ff79c6
                      \ | highlight htmlTSTitle guifg=#f8f8f2
                      \ | highlight htmlEndTag guifg=#ff79c6
                      \ | highlight @text guifg=#f8f8f2
                      \ | highlight @text.title guifg=#f8f8f2
                      \ | highlight htmlArg guifg=#50fa7b
                      \ | highlight @tag.attribute guifg=#50fa7b
                      \ | highlight htmlh1 guifg=#f8f8f2
                      \ | highlight htmlh2 guifg=#f8f8f2
                      \ | highlight htmlh2 guifg=#f8f8f2
                      \ | highlight c_sharpTSCharacter guifg=#f1fa8c
                      \ | highlight c_sharpTSNamespace guifg=#8be9fd
                      \ | highlight c_sharpTSTypeBuiltin guifg=#ff79c6
                      \ | highlight markdownH1 guifg=#bd93f9
                      \ | highlight markdownH2 guifg=#bd93f9
                      \ | highlight markdownH3 guifg=#bd93f9
                      \ | highlight markdownH4 guifg=#bd93f9
                      \ | highlight markdownHeadingDelimiter guifg=#bd93f9
                      \ | highlight @property.id guifg=#50fa7b
                      \ | highlight @property.typescript guifg=#bd93f9
                      \ | highlight @property.css guifg=#8be9fd
                      \ | highlight @property.class.css guifg=#50fa7b
                      \ | highlight @string.plain.css guifg=#bd93f9
                      \ | highlight @type.tag guifg=#ff79c6
                      \ | highlight @text.title.markdown guifg=#bd93f9
                      \ | highlight @text.reference guifg=#ff79c6
                      \ | highlight @text.uri.markdown guifg=#8be9fd
                      \ | highlight markdownCodeDelimiter guifg=#ff79c6
                      \ | highlight Normal guibg=none
  augroup end
]]

vim.cmd [[colorscheme dracula]]
