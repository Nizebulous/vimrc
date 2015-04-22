" ~/.vim/sessions/default.vim:
" Vim session script.
" Created by session.vim 2.10.1 on 22 April 2015 at 17:06:04.
" Open this file in Vim and run :source % to restore your session.

if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'lucius' | colorscheme lucius | endif
call setqflist([{'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'mksp/apps/logistics/admin/fulfillers.py', 'text': 'running'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'mksp/apps/logistics/admin/fulfillers.py', 'text': 'To git@github.com:makingspace/site.git'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'mksp/apps/logistics/admin/fulfillers.py', 'text': ' ! [rejected]        develop -> develop (fetch first)'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'E', 'pattern': '', 'filename': 'mksp/apps/logistics/admin/fulfillers.py', 'text': 'error: failed to push some refs to ''git@github.com:makingspace/site.git'''}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'mksp/apps/logistics/admin/fulfillers.py', 'text': 'hint: Updates were rejected because the remote contains work that you do'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'mksp/apps/logistics/admin/fulfillers.py', 'text': 'hint: not have locally. This is usually caused by another repository pushing'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'mksp/apps/logistics/admin/fulfillers.py', 'text': 'hint: to the same ref. You may want to first integrate the remote changes'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'mksp/apps/logistics/admin/fulfillers.py', 'text': 'hint: (e.g., ''git pull ...'') before pushing again.'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'mksp/apps/logistics/admin/fulfillers.py', 'text': 'hint: See the ''Note about fast-forwards'' in ''git push --help'' for details.'}])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/makespace/site
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +16 ~/.vim/vimrc
badd +33 ~/makespace/ansible_dev/site_deploy/roles/provision/files/conf/nginx.conf
badd +10 ~/makespace/ansible_dev/site_deploy/makespace_provision.yml
badd +7 ~/makespace/ansible_dev/build_a_box/builder_box.yml
badd +348 mksp/apps/logistics/models/shipments.py
badd +19 mksp/static/js/api/Account.js
badd +27 mksp/apps/users/apis/bookings.py
badd +3 .gitignore
badd +2 \[Vundle]\ list
badd +15 mksp/apps/logistics/apis/addresses.py
badd +19 mksp/apps/users/apis/users.py
badd +5 mksp/apps/logistics/apis/containers.py
badd +407 ~/.vim/bundle/vim-easytags/doc/easytags.txt
badd +58 mksp/services/api2/exceptions.py
badd +81 mksp/apps/logistics/apis/fulfillers.py
badd +24 mksp/apps/logistics/models/fulfillers/fulfillers.py
badd +1 mksp/apps/logistics/admin/fulfillers.py
badd +5 requirements.txt
badd +1 mksp/apps/users/models/bookings.py
badd +17 \[Vundle]\ Installer
badd +1 ~/makespace/ansible_dev/site_deploy/roles/unattended_upgrades/templates/unattended-upgrades.j2
badd +1 ~/makespace/ansible_dev/site_deploy/roles/unattended_upgrades/tasks/main.yml
badd +1 ~/makespace/ansible_dev/site_deploy/roles/unattended_upgrades/vars/Ubuntu.yml
badd +1 ~/makespace/ansible_dev/build_a_box/roles/unattended_upgrades/vars/Ubuntu.yml
badd +1 ~/makespace/ansible_dev/build_a_box/roles/mksp_build/tasks/main.yml
badd +1 ~/makespace/ansible_dev/build_a_box/roles/mksp_build/vars/main.yml
badd +2 ~/makespace/ansible_dev/build_a_box/roles/unattended_upgrades/README.md
argglobal
silent! argdel *
edit ~/.vim/vimrc
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 146 - ((59 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
146
normal! 0
tabedit ~/makespace/ansible_dev/build_a_box/builder_box.yml
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 181 + 181) / 362)
exe 'vert 2resize ' . ((&columns * 180 + 181) / 362)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 11 - ((10 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 07|
wincmd w
argglobal
edit ~/makespace/ansible_dev/build_a_box/builder_box.yml
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 8 - ((7 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 08|
wincmd w
exe 'vert 1resize ' . ((&columns * 181 + 181) / 362)
exe 'vert 2resize ' . ((&columns * 180 + 181) / 362)
tabedit mksp/apps/logistics/admin/fulfillers.py
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 120 + 181) / 362)
exe 'vert 2resize ' . ((&columns * 120 + 181) / 362)
exe 'vert 3resize ' . ((&columns * 120 + 181) / 362)
argglobal
setlocal fdm=expr
setlocal fde=pymode#folding#expr(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 2 - ((1 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 033|
wincmd w
argglobal
edit mksp/apps/logistics/models/fulfillers/fulfillers.py
setlocal fdm=expr
setlocal fde=pymode#folding#expr(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 198 - ((59 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
198
normal! 09|
wincmd w
argglobal
edit mksp/apps/logistics/models/shipments.py
setlocal fdm=expr
setlocal fde=pymode#folding#expr(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 348 - ((29 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
348
normal! 09|
wincmd w
exe 'vert 1resize ' . ((&columns * 120 + 181) / 362)
exe 'vert 2resize ' . ((&columns * 120 + 181) / 362)
exe 'vert 3resize ' . ((&columns * 120 + 181) / 362)
tabnext 3
if exists('s:wipebuf')
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

1wincmd w
tabnext 3
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
