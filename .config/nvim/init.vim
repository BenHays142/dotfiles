:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set mouse=a

call plug#begin()

Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'prabirshrestha/vim-lsp'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'Shougo/deoplete.nvim'
Plug 'lighttiger2505/deoplete-vim-lsp'

" setting with vim-lsp
if executable('ccls')
   au User lsp_setup call lsp#register_server({
      \ 'name': 'ccls',
      \ 'cmd': {server_info->['ccls']},
      \ 'root_uri': {server_info->lsp#utils#path_to_uri(
      \   lsp#utils#find_nearest_parent_file_directory(
      \     lsp#utils#get_buffer_path(), ['.ccls', 'compile_commands.json', '.git/']))},
      \ 'initialization_options': {
      \   'highlight': { 'lsRanges' : v:true },
      \   'cache': {'directory': stdpath('cache') . '/ccls' },
      \ },
      \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
      \ })
endif

let g:airline_theme='onedark'

call plug#end()
