" ==============================
" Configuração básica do Neovim
" ==============================

" Mostrar números de linha
set number
" Realce de sintaxe
syntax on
" Usar UTF-8
set encoding=utf-8
" Mostrar correspondência de parênteses/chaves
set showmatch
" Melhor aparência
set termguicolors
" Ativar barra de status sempre visível
set laststatus=2
" Melhor navegação
set mouse=a
" Usar espaço em vez de tab
set expandtab
" Tamanho do tab
set tabstop=3
set shiftwidth=3

" ==============================
" Gerenciador de plugins: vim-plug
" ==============================

" Inicializa o gerenciador
call plug#begin('~/.local/share/nvim/plugged')

" --- Plugins essenciais ---
Plug 'preservim/nerdtree'             " Navegador de arquivos
Plug 'ryanoasis/vim-devicons'         " Ícones bonitos no NERDTree
Plug 'vim-airline/vim-airline'        " Barra de status leve
Plug 'vim-airline/vim-airline-themes' " Temas para o airline
Plug 'tpope/vim-sensible'             " Boas configurações padrão
Plug 'tpope/vim-commentary'           " Comentarios de linhas

call plug#end()

" ==============================
" Configurações do NERDTree
" ==============================

" Mostrar arquivos ocultos
let NERDTreeShowHidden = 1
": Fechar o NERDTree ao abrir um arquivo
" let NERDTreeQuitOnOpen = 1
" Atualizar árvore automaticamente
"autocmd BufEnter * if exists("t:NERDTreeBufName") && bufname("%") !~ "NERD_tree" | NERDTreeFind | endif
" Atalho para abrir/fechar NERDTree
 nnoremap <C-n> :NERDTreeToggle<CR>
" Abre automaticamente o NERDTree ao iniciar o Neovim se nenhum arquivo for passado
 autocmd VimEnter * if argc() == 0 | NERDTree | endif
" Reabrir automaticamente o NERDTree em novas abas
" autocmd TabNewEntered * NERDTree

" ==============================
" Configuração do Airline
" ==============================
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'

" ==============================
" Aparência e usabilidade extra
" ==============================
" Destacar linha atual
set cursorline
" Melhor busca
set ignorecase
set smartcase
" Permitir dividir janelas mais intuitivamente
set splitbelow
set splitright

