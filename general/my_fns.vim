function LogicSignal(bitwidth)
    let n = a:bitwidth - 1
    execute "normal! ilogic [" . n . ":0] "
    echom "done"
endfunction

