" ʸ��������
:set encoding=utf-8 "����encoding
:set fileencodings=utf-8,ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,sjis,cp932,utf-7 "�ե�����μ�ưǧ����Ŭ��

" ɽ��
syntax enable "�����ɤο�ʬ��
set background=dark "�����ߥʥ��طʿ����Ť����Ѥθ��䤹�����դ�
set number "���ֹ��ɽ��
set title "�����ȥ��ɽ��
set cursorline "��������Ԥ��طʿ����Ѥ���
" set cursorcolumn "����������֤Υ������طʿ����Ѥ���
set list "�ԲĻ�ʸ����ɽ��
set listchars=tab:>-,eol:< "tab,���ԤΥե����ޥåȻ���
set showmatch "������ϻ����б������̤�ɽ��

" ����/����ǥ��
set cindent "����autoindent
set expandtab "tab������˥��ڡ�������������
set tabstop=4 "�ե��������tab�򥹥ڡ���4��ʬ��ɽ������
set shiftwidth=4 "vim���������륤��ǥ�Ȥ򥹥ڡ���4��ʬ������
set softtabstop=0 "�����ܡ��ɤ�tab�򲡤����������ڡ�����������������tabstop�˽����褦0�ˤ��Ƥ���

" ����
set hlsearch "������̤�ϥ��饤��
set incsearch "���󥯥��󥿥븡��

" �ե������Ϣ
set noswapfile "����åץե������������ʤ�
set hidden "��¸����Ƥ��ʤ��ե����뤬���äƤ��̥ե�����򳫤���褦�ˤ���
set autoread "�����ǥե�������ѹ������ä���缫ưŪ���ɤ�ľ��

" ����¾
" set mouse=a "�ޥ������Ϥ�����դ���

" NeoBundle start
set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif
" �����˥ץ饰�����
NeoBundle 'Lokaltog/powerline'
NeoBundle 'tomasr/molokai'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'chriskempson/vim-tomorrow-theme'

filetype plugin on
filetype indent on
" NeoBundle end

set t_Co=256 "256��ɽ��
colorscheme molokai
