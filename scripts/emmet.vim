" Allows Emmet Expansion with the Tab key
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" Force Emmet on both .js and .jsx files
let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\}


