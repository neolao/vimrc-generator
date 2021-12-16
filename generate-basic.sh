#!/bin/bash


VIM_RUNTIME_PATH="./generated/vim-basic"
VIMRC_PATH="$VIM_RUNTIME_PATH/.vimrc"
VIM_COLORS_PATH="$VIM_RUNTIME_PATH/colors"
VIM_AUTOLOAD_PATH="$VIM_RUNTIME_PATH/autoload"
VIM_SYNTAX_PATH="$VIM_RUNTIME_PATH/syntax"
VIM_PLUGGED_PATH="$VIM_RUNTIME_PATH/plugged"

mkdir -p $VIM_COLORS_PATH
mkdir -p $VIM_AUTOLOAD_PATH
mkdir -p $VIM_SYNTAX_PATH
mkdir -p $VIM_PLUGGED_PATH

cp ./parts/vim.sh $VIM_RUNTIME_PATH/vim.sh

#echo "set runtimepath=.,./after" > $VIMRC_PATH
echo "" > $VIMRC_PATH

cp ./parts/themes/colors/pablo.vim $VIM_COLORS_PATH
cat ./parts/themes/pablo.vim >> $VIMRC_PATH

cat ./parts/encodings/utf-8.vim >> $VIMRC_PATH
#cat ./parts/term/xterm-256color.vim >> $VIMRC_PATH
echo "set nocompatible" >> $VIMRC_PATH
cat ./parts/status-line/always.vim >> $VIMRC_PATH
cat ./parts/status-line/layout/a.vim >> $VIMRC_PATH
cat ./parts/indent/auto.vim >> $VIMRC_PATH
cat ./parts/swapfile/disable.vim >> $VIMRC_PATH
cat ./parts/line-numbers/enable.vim >> $VIMRC_PATH
#cat ./parts/whitespace/show.vim >> $VIMRC_PATH

# Syntax
cp ./parts/syntax/languages/syntax.vim $VIM_SYNTAX_PATH
cp ./parts/syntax/languages/nosyntax.vim $VIM_SYNTAX_PATH
cp ./parts/syntax/languages/vim.vim $VIM_SYNTAX_PATH
cat ./parts/syntax/enable.vim >> $VIMRC_PATH

# Plugins
cp ./parts/vim-plug/plug.vim $VIM_AUTOLOAD_PATH/plug.vim
echo "call plug#begin('plugged')" >> $VIMRC_PATH

# File explorer
echo "Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }" >> $VIMRC_PATH
echo "Plug 'neolao/vim-nerdtree-tabs'" >> $VIMRC_PATH
echo "Plug 'Xuyuanp/nerdtree-git-plugin'" >> $VIMRC_PATH
echo "Plug 'pseewald/nerdtree-tagbar-combined'" >> $VIMRC_PATH

echo "call plug#end()" >> $VIMRC_PATH
