nmap t <Plug>Lightspeed_s
nmap T <Plug>Lightspeed_S

xmap t <Plug>Lightspeed_s
xmap F <Plug>Lightspeed_S

nmap <Leader>t <Plug>Lightspeed_omni_gs
xmap <Leader>t <Plug>Lightspeed_omni_gs

let g:lightspeed_last_motion = ''
augroup lightspeed_last_motion
autocmd!
autocmd User LightspeedSxEnter let g:lightspeed_last_motion = 'sx'
autocmd User LightspeedFtEnter let g:lightspeed_last_motion = 'ft'
augroup end
map <expr> ; g:lightspeed_last_motion == 'sx' ? "<Plug>Lightspeed_;_sx" : "<Plug>Lightspeed_;_ft"
map <expr> , g:lightspeed_last_motion == 'sx' ? "<Plug>Lightspeed_,_sx" : "<Plug>Lightspeed_,_ft"
