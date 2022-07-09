"NERDTree
map <C-b> :NERDTreeToggle<CR>
map <C-i> :NERDTreeFind<CR>
let g:NERDTreePatternMatchHighlightFullName = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$','__pycache__', 'node_modules']
let g:NERDTreeShowBookmarks=1


"Coc
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

" Use tab for trigger completion with characters ahead and navigate.
 " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
 " other plugin before putting this into your config.
 inoremap <silent><expr> <TAB>
       \ pumvisible() ? "\<C-n>" :
             \ CheckBackspace() ? "\<TAB>" :
                   \ coc#refresh()
                   inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

                   function! CheckBackspace() abort
                     let col = col('.') - 1
                       return !col || getline('.')[col - 1]  =~# '\s'
                       endfunction



" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" " format on enter, <cr> could be remapped by other vim plugin
" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
"                               \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"
"
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
 nmap <silent> [g <Plug>(coc-diagnostic-prev)
 nmap <silent> ]g <Plug>(coc-diagnostic-next)

 " GoTo code navigation.
 nmap <silent> gd <Plug>(coc-definition)
 nmap <silent> gy <Plug>(coc-type-definition)
 nmap <silent> gi <Plug>(coc-implementation)
 nmap <silent> gr <Plug>(coc-references)


 " Use K to show documentation in preview window.
  nnoremap <silent> K :call ShowDocumentation()<CR>
 
  function! ShowDocumentation()
    if CocAction('hasProvider', 'hover')
        call CocActionAsync('doHover')
          else
              call feedkeys('K', 'in')
                endif
                endfunction
 
                " Highlight the symbol and its references when holding the cursor.
                autocmd CursorHold * silent call CocActionAsync('highlight')
 
                " Symbol renaming.
                nmap <leader>rn <Plug>(coc-rename)
 
                " Formatting selected code.
                xmap <leader>f  <Plug>(coc-format-selected)
                nmap <leader>f  <Plug>(coc-format-selected)



				" Highlight the symbol and its references when holding the
				" cursor.
				 autocmd CursorHold * silent call CocActionAsync('highlight')
				"
				" " Symbol renaming.
				 nmap <leader>rn <Plug>(coc-rename)
				"
				" " Formatting selected code.
				 xmap <leader>f  <Plug>(coc-format-selected)
				 nmap <leader>f  <Plug>(coc-format-selected)
				"
				 augroup mygroup
				   autocmd!
				"     " Setup formatexpr specified filetype(s).
				       autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
				      " Update signature help on jump placeholder.
				           autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
				           augroup end
				"
				"           " Applying codeAction to the selected region.
				"           " Example: `<leader>aap` for current paragraph
				           xmap <leader>a  <Plug>(coc-codeaction-selected)
				           nmap <leader>a  <Plug>(coc-codeaction-selected)
				"
				"           " Remap keys for applying codeAction to the
				"           current buffer.
				           nmap <leader>ac  <Plug>(coc-codeaction)
				"           " Apply AutoFix to problem on the current line.
				           nmap <leader>qf  <Plug>(coc-fix-current)
				"
				"           " Run the Code Lens action on the current line.
				           nmap <leader>cl  <Plug>(coc-codelens-action)
				"
				"           " Map function and class text objects
				"           " NOTE: Requires 'textDocument.documentSymbol'
				"           support from the language server.
				           xmap if <Plug>(coc-funcobj-i)
				           omap if <Plug>(coc-funcobj-i)
				           xmap af <Plug>(coc-funcobj-a)
				           omap af <Plug>(coc-funcobj-a)
				           xmap ic <Plug>(coc-classobj-i)
				           omap ic <Plug>(coc-classobj-i)
				           xmap ac <Plug>(coc-classobj-a)
				           omap ac <Plug>(coc-classobj-a)


						   " Add (Neo)Vim's native statusline support.
						   " " NOTE: Please see `:h coc-status` for
						   " integrations with external plugins that
						   " " provide custom statusline: lightline.vim,
						   " vim-airline.
						   set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
						   "
						   " " Mappings for CoCList
						   " " Show all diagnostics.
						    nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
						   " " Manage extensions.
						    nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
						   " " Show commands.
						    nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
						   " " Find symbol of current document.
						    nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
						   " " Search workspace symbols.
						    nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
						   "  " Do default action for next item.
						     nnoremap <silent><nowait> <space>j :<C-u>CocNext<CR>
						   "  " Do default action for previous item.
						     nnoremap <silent><nowait> <space>k :<C-u>CocPrev<CR>
						   "  " Resume latest coc list.
						     nnoremap <silent><nowait> <space>p :<C-u>CocListResume<CR>



"fzf
 "This is the default option:
 "   - Preview window on the right with 50% width
 "   - CTRL-/ will toggle preview window.
 " - Note that this array is passed as arguments to fzf#vim#with_preview
 " function.
 " - To learn more about preview window options, see `--preview-window`
 "section of `man fzf`.
 let g:fzf_preview_window = ['right:50%', 'ctrl-/']

 " Preview window on the upper side of the window with 40% height,
 " hidden by default, ctrl-/ to toggle
 let g:fzf_preview_window = ['up:40%:hidden', 'ctrl-/']

 " Empty value to disable preview window altogether
 let g:fzf_preview_window = []


"Searching file with fzf

nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
	\ 'ctrl-t': 'tab split', 
  \ 'ctrl-s': 'split', 
  \ 'ctrl-v': 'vsplit' 
  \}


" === Vim airline ==== "
" Enable extensions
let g:airline_theme='simple'
let g:airline_extensions = ['branch',  'coc']

" Update section z to just have line number
let g:airline_section_z = airline#section#create(['linenr'])

" Do not draw separators for empty sections (only for the active window) >
let g:airline_skip_empty_sections = 1

" Smartly uniquify buffers names with similar filename, suppressing common parts of paths.
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Custom setup that removes filetype/whitespace from default vim airline bar
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'z', 'warning', 'error']]

" Customize vim airline per filetype
" 'nerdtree'  - Hide nerdtree status line
" 'list'      - Only show file type plus current line number out of total
let g:airline_filetype_overrides = {
  \ 'nerdtree': [ get(g:, 'NERDTreeStatusline', ''), '' ],
  \ 'list': [ '%y', '%l/%L'],
  \ }

" Enable powerline fonts
let g:airline_powerline_fonts = 1

" Enable caching of syntax highlighting groups
let g:airline_highlighting_cache = 1

" Define custom airline symbols
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" Don't show git changes to current file in airline
let g:airline#extensions#hunks#enabled=0

"Commentary
"
"
autocmd FileType apache setlocal commentstring=#\ %s
