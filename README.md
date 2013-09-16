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

    Learn the basics or more about key mapping at
    http://learnvimscriptthehardway.stevelosh.com/chapters/03.html

## Key Bindings
    I have setup a few key-bindings to make my life easier, feel free to change them to suite
    yourself. IMPORTANT: I have disabled all arrow keys. That is to re-enforce the use of the much
    faster hlkj (left, right, up, down).  I have also changed my <leader> key from the default of
    '/' to ';'.  To same on some typing, use <> to mean <leader>.  When it is not the leader, say
    CTRL-<some key>, I use <ctrl>.

    <leader> = ;

    Mapping    | Result         | Explaination
    -----------+----------------+-------------------------------------------------------------
    <>;        | :wa            | save current file, saving me one keystroke
    <>wq       | :wqall         | Write and quite, saves all buffers and quite vim
    /          | /\v            | use Perl's regex instead of Vim's variation
    <><space>  | :noh<cr>       | Clear Search, after you find what you want
    <tab>      | %              | match parenthesis, braces, etc., easier to reach and type than '%'
    <>l        | :set list!<cr> | toggle list command
    <F1>       | <ESC>          | most likely what was being reached for since there is not F1 help in Vim
    <>q        | gqip           | re-hard wrap paragraphs of text
    <>v        | V`]            | re-select the text just pasted, so you can work on it
    <>ev       | ....           | Edit Vimrc, pretty long command to open .vimrc in a split window for editing.

    Key bindings that are tied to plugins, will be covered in the tutorial for the plugin.

## DWM - Window Manager
    URL: https://github.com/spolu/dwm.vim

    Probably the first and easiest plugin to start with is DWM.  You really don't have to do
    anything to activate DWM, it is all ready to go.  So what is DWM?  DWM is a window manager for
    VIM, meaning that it helps you managed multiple split windows very easily.

    NOTE: By default, the DWM plugin uses <ctrl>+<n>, <ctrl>+<c>, etc. But those binding gets
    overwritten by the YankRing plugin. So I have remapped the conflicting ones as folllows:

    <>wn          window-new              create a new window (make it the main)
    <>wc          window-close            close the current window
    <>wf          window-focus            change foucs, make current window the main
    <>wfs         window-full-screen      full screen, use <>wf to return to multiple windows
    
    If you don't already know, VIM allows you to create split windows (virtical or horizontal) using
    the ':split' or 'vsplit' commands.  You can try them now if you like, just fire up Vim and then
    type ':split' and ':vsplit' to see what happens.  You can then move between windows with
    <CTRL>+<j> or <CTRL>+<k>.

    With DWM, you really don't need to think about how to split your windows.  It maintains a main
    window and stacks other winodws on the right.  To try it out, open a new Vim or close all but
    one window if you have some split windows (use ':close', ':q', or ':q!' if you have type
    anything).  Now, with the cursor in the single Vim window, start editing, then in
    command mode type '<>wn.  Notice now the new windows is placed, start editing in this
    second windows.  Back to command mode and type <>wn again.  Notice what is happening?

## Rainbow Parenthesis
    This plugin uses different colors for nested brackets, parenthesis, braces, etc. This is
    a smiple plugin to use. I toggle when I want using key binding <leader>rp, instead of having it
    on for every file.  Think <leader> Rainbow-Parenthesis for this command.

## CommandT
    URL: https://wincent.com/products/command-t, https://github.com/wincent/Command-T

    This plugin was inspired by commercial plugin for Vim called Sparkup I think, and that was
    inspired by the Cmd-T feature in TextMate.  Regardless of the linage or history, this is a great
    plugin.
    
    By default Command-T comes with only two mappings, but there are a few more commands:

    <Leader>t     bring up the Command-T file window
    <Leader>b     bring up the Command-T buffer window

    This plugin allows you do fuzzy-search to open files in a directory or directory-tree.
    So assuming you are in your project, active the pluin with <leader>t.  You will see a list of
    files, just start typping some characters from both the path and filename.  You don't need to
    type the complete path nor file name. This only makes sense if you try it or check out the
    tutorial on the web site. By the way, you will need ruby and to compile the C-extension.  All of
    the information is available at the website.

## EasyMotion
    URL: https://github.com/Lokaltog/vim-easymotion

    Now that you know how to open files quickly with Command-T and manage them in multiple windows
    with DWM. It is time to move around quickly with-in a given file. That is what EasyMotion is
    for. Activate EasyMotion using <leader><leader>w.  NOTE that you *MUST* type the leader
    character twoce followed by 'w' to activate EasyMotion. I find this preferable to <leader>w,
    which would conflict with  then type the single letter to jump to the word you want. That's is
    pretty it, there is more to the plugin, like <leader>f<char> to find specific character. Read
    more at the website.

## NERDTree

    Just open vim and type <leader>nt, think <leader> Nerd-Tree.  Now you can use the hljk commands
    to move around.  'o' and 'O' will open a folder or a file.  '<enter>/<cr>' will also open the
    current highlighted file too.  Type '?' at anytime to get get.  There are many many things you
    can do in file-browser window for NERDTree.

## NERDComment

## Surround

## UltiSnips
    By default, UltiSnips maps the following keys using UltiSnips variables:
    
    The variables with their default values are: >
        g:UltiSnipsExpandTrigger               <tab>
        g:UltiSnipsListSnippets                <c-tab>
        g:UltiSnipsJumpForwardTrigger          <c-j>
        g:UltiSnipsJumpBackwardTrigger         <c-k>

    You can change the keys used, by setting the variables in your ~/.vimrc file.  For
    example, set g:UltiSnipsExpandTrigger and g:UltiSnipsJumpForwardTrigger can be set to
    the same value. To simulate TextMate behavior, add the following lines to your
    vimrc file. >
        let g:UltiSnipsExpandTrigger="<tab>"
        let g:UltiSnipsJumpForwardTrigger="<tab>"
        let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
