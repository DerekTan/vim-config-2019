Please copy "vimfiles" into your user directory "C:\Users\your_name\"

install python3.7

" for gtags
pip install pygments

" unzip 
unzip gtags_glo663wb-x86.zip to ./gtags
unzip universal_ctags-2019-03-28_ee1f32bc-x86.zip to ./ctags

" in vimrc
let $GTAGSLABEL = 'native-pygments'
let $GTAGSCONF = $HOME.'/vimfiles/gtags/share/gtags/gtags.conf'
