if getcwd() == expand('$HOME/git/fpga')
    set path+=$HOME/git/fpga/bazel-bin/protocols/**/*
    command! -nargs=0 OpenGeneratedSvjt :execute "silent! let output = system('$FALCON_TOP/scripts/open_generated_svjt.sh ' . shellescape(fnamemodify(expand('%'), ':t')))" | if v:shell_error | echomsg "Error: " . v:errmsg | else | execute "edit " . fnameescape(trim(output)) | endif
    set cc=120
endif
