if getcwd() == expand('$HOME/git/fpga')
    set path+=$HOME/git/fpga/bazel-bin/protocols/**/*
    command! -nargs=0 OpenGeneratedSvjt :execute "silent! let output = system('$FALCON_TOP/scripts/open_generated_svjt.sh ' . shellescape(fnamemodify(expand('%'), ':t')))" | if v:shell_error | echomsg "Error: " . v:errmsg | else | execute "edit " . fnameescape(trim(output)) | endif
    set cc=120

    function! OpenBuildBazel()
        let current_file = expand('%:p')
        let current_directory = fnamemodify(current_file, ':h')
        let build_bazel_file = current_directory . '/BUILD.bazel'

        if filereadable(build_bazel_file)
            execute 'edit ' . build_bazel_file
        else
            echo 'BUILD.bazel file not found in this directory.'
        endif
    endfunction

    command! OpenBuildBazel :call OpenBuildBazel()
endif

if getcwd() == expand('$HOME/git/roadrunner')
    set path+=$HOME/git/roadrunner/bazel-bin/protocols/**/*
    set cc=120
endif
