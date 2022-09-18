require'lightspeed'.setup {
    ignore_case = true,
    exit_after_idle_msecs = { labeled = 1000, unlabeled = 1000 },
    safe_labels = {'a', 'r', 's', 't', 'n', 'e', 'i', 'o', 'd', 'h', 'p', 'l'},
    -- arstneiodhplfuvkcmbyw;xz[/.ARSTNEIO
    labels = {'a', 'r', 's', 't', 'n', 'e', 'i', 'o', 'd', 'h', 'p', 'l', 'f', 'u', 'v', 'k', 'c', 'm', 'b', 'y', 'w', ';', 'x', 'z', '[', '/', '.', ',', 'A', 'R', 'S', 'T', 'N', 'E', 'I', 'O'}
}
