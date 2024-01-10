
" Changing Leader Key
nnoremap <Space> <nop>
let mapleader = ","
let maplocalleader = "\,"

" General plugin bindings
function! s:general_bindings()
	map <C-n> :NERDTreeToggle<CR>
	nmap <leader>fs <ESC>:w<cr>
		
	" Fzf
	map <C-f> <Esc><Esc>:Files!<CR>
	inoremap <C-f> <Esc><Esc>:BLines!<CR>
	map <C-g> <Esc><Esc>:BCommits!<CR>
	nnoremap <silent> <Leader>f :Rg<CR>

	nnoremap <silent> <leader>vv :vsp<CR>
	map <left> <C-w><left>
	map <right> <C-w><right>
	map <up> <C-w><up>
	map <down> <C-w><down>

	imap ii <Esc>

	nnoremap <silent> <leader>q :wq!<cr>

	nnoremap <silent> <Leader><Leader> :source $MYVIMRC<cr>

	nnoremap <space> za

	nmap <leader>b <ESC>:bd<CR>

	nnoremap <C-g> :Rg<Cr>

	" Remap Flake8
	autocmd FileType python map <buffer> <silent> <Leader>f8 :call flake8#Flake8()<CR>

	" Git Blame
	"
	nnoremap <silent> <leader>gb :BlamerToggle<cr>	
endfunction

" Semshi
function! s:semshi_bindings()
	nmap <silent> <leader>rr :Semshi rename<CR>
	nmap <silent> <Tab> :Semshi goto name next<CR>
	nmap <silent> <leader>c :Semshi goto class next<CR>
	nmap <silent> <leader>C :Semshi goto class prev<CR>
endfunction

" Test Bindings
function! s:test_bindings()
	nnoremap <Leader>dc :DjangoTestClass<CR>
    	nnoremap <Leader>dm :DjangoTestMethod<CR>
	nnoremap <Leader>df :DjangoTestFile<CR>
endfunction

augroup bindings
	autocmd!
	autocmd VimEnter * call s:general_bindings()
	autocmd VimEnter * call s:semshi_bindings()
	autocmd VimEnter * call s:test_bindings()
augroup END

