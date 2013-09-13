dot-vim
=======

Verrol's .vim repo
------------------

# Installation:
  Open terminal or prompt in your home directory. Then execute the following command.
  % git clone https://github.com/verrol/dot-vim.git .vim

## Setup:
   % cd .vim
   % git submodule init
   % git submodule update

### NON-Windows Users:
    % ln -s ~/.vim/vimrc ~/.vimrc
    % ln -s ~/.vim/gvimrc ~/.gvimrc

### Windows Users:
    % rename %HOME%\.vim %HOME%\vimfiles
    Create shortcut from %HOME%\vimfiles\vimrc %HOME%\.vimrc
    Create shortcut from %HOME%\vimfiles\gvimrc %HOME%\.gvimrc

# Tutorial
    There are several plugins that are part of this repo, see the vim/bundle direcotry. Below, I am
    going to show how to use some of them.  The intention is that if you are using my setup to get
    started, then you will at least have some idea how to use some of the plugins here before you
    start customizing by adding/removing your own.

## Key Bindings
    I have setup a few key-bindings to make my life easier, feel free to change them to suite
yourself. Things to note, I have disabled all arrow keys. That is to re-enforce the use of the much
faster hklj (left, up, right, down)

    <leader>= ;
    <leader>;=:wa=save current file, saving me one keystroke
    <leader>wq=:wqall=Write and quite, saves all buffers and quite vim, saves 4 keystroke
    /=/\v=to use Perl's regex instead of Vim's variation
    <leader><space>=:noh<cr>=clears hightlight search resul, nice after you find what you want
    <tab>=%=match parenthesis, braces, etc., easier to reach and type than '%'
    <leader>l=:set list!<cr>=toggle list command
    <F1>=<ESC>=most likely what was being reached for since there is not F1 help in Vim
    <leader>q=gqip=re-hard wrap paragraphs of text
    <leader>v=V`]=re-select the text just pasted, so you can work on it
    <leader>ev=....=Edit Vimrc, pretty long command to open .vimrc in a split window for editing.

    Key bindings that are tied to plugins, will be covered in the tutorial for the plugin.

## DWM - Window Manager
    URL: https://github.com/spolu/dwm.vim

    Probably the first and easiest plugin to start with is DWM.  You really don't have to do
    anything to activate DWM, it is all ready to go.  So what is DWM?  DWM is a window manager for
    VIM, meaning that it helps you managed multiple split windows very easily.  If you don't already
    know, VIM allows you to create split windows (virtical or horizontal) using the ':split' or
    'vsplit' commands.  You can try them now if you like, just fire up Vim and then type ':split'
    and ':vsplit' to see what happens.  You can then move between wiindows with <CTRL>+<w><w> or
    <CTRL>+<w><[hljk]>, which are your movement keys to move left, right, down, or up to another
    windows.

    With DWM, you really don't need to think about how to split your windows.  It maintains a main
    window and stacks other winodws on the right.  To try it out, open a new Vim or close all but
    one window if you have some split windows (use ':close', ':q', or ':q!' if you have type
            anything).  Now, with the cursor in the single Vim window, start editing, then in
    command mode type '<CTRL>+<n>.  Notice now the new windows is placed, start editing in this
    second windows.  Back to command mode and type <CTRL>+<n> again.  Notice what is happening?  her
    are some other commands:

    - <ctrl>+<n>:      create a new window (make it the main)
    - <ctrl>+<c>:      close the current window
    - <ctrl>+<j>:      move to next window clockwise
    - <ctrl>+<k>:      move to next window counter-clockwise
    - <ctrl>+<space>:  change foucs, make current window the main
    - <ctrl>+<m>:      full screen, use <ctrl>+<space> to return to multiple windows

## Rainbow Parenthesis
    This plugin uses different colors for nested brackets, parenthesis, braces, etc. This is
    a smiple plugin to use. I toggle when I want using key binding <leader>rp, instead of having it
    on for every file.

## CommandT
    URL: https://wincent.com/products/command-t, https://github.com/wincent/Command-T
    This plugin was inspired by commercial plugin for Vim called Sparkup I think, and that was
    inspired by the Cmd-T feature in TextMate.  Regardless of the linage or history, this is a great
    plugin.  This plugin allows you do fuzzy-search to open files in a directory or directory-tree.
    So assuming you are in your project, active the pluin with <leader>t.  You will see a list of
    files, just start typping some characters from both the path and filename.  You don't need to
    type the complete path nor file name. This only makes sense if you try it or check out the
    tutorial on the web site. By the way, you will need ruby and to compile the C-extension.  All of
    the information is available at the website.

## EasyMotion
    URL: https://github.com/Lokaltog/vim-easymotion
    Now that you know how to open files quickly with Command-T and manage them in multiple windows
    with DWM. It is time to move around quickly with-in a given file. That is what EasyMotion is
    for. Activate EasyMotion using <leader>w, then type the single letter to jump to the word you
    want. That's is pretty it, there is more to the plugin, like <leader>f<char> to find specific
    character. Read more at the website.

## NERDTree

## NERDComment

## Surround


