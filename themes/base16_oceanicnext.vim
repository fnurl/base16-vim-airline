" Base 16 OceanicNext scheme by https://github.com/voronianski/oceanic-next-color-scheme
" base16-builder template for vim-airline by fnurl

" The base16-vim-airline theme is designed to be compatible with the
" base16-shell scripts. In order to take advantage of this, install
" the base16-shell themes and follow the instructions for enabling them.
let g:airline#themes#base16_oceanicnext#palette = {}

" GUI color definitions
let s:gui00 = "#1B2B34"
let s:gui01 = "#343D46"
let s:gui02 = "#4F5B66"
let s:gui03 = "#65737E"
let s:gui04 = "#A7ADBA"
let s:gui05 = "#C0C5CE"
let s:gui06 = "#CDD3DE"
let s:gui07 = "#D8DEE9"
let s:gui08 = "#EC5f67"
let s:gui09 = "#F99157"
let s:gui0A = "#FAC863"
let s:gui0B = "#99C794"
let s:gui0C = "#5FB3B3"
let s:gui0D = "#6699CC"
let s:gui0E = "#C594C5"
let s:gui0F = "#AB7967"

" Terminal color definitions
let s:cterm00 = "00"
let s:cterm03 = "08"
let s:cterm05 = "07"
let s:cterm07 = "15"
let s:cterm08 = "01"
let s:cterm0A = "03"
let s:cterm0B = "02"
let s:cterm0C = "06"
let s:cterm0D = "04"
let s:cterm0E = "05"
if exists('base16colorspace') && base16colorspace == "256"
  let s:cterm01 = "18"
  let s:cterm02 = "19"
  let s:cterm04 = "20"
  let s:cterm06 = "21"
  let s:cterm09 = "16"
  let s:cterm0F = "17"
else
  let s:cterm01 = "10"
  let s:cterm02 = "11"
  let s:cterm04 = "12"
  let s:cterm06 = "13"
  let s:cterm09 = "09"
  let s:cterm0F = "14"
endif

" The array is in the format: [ guifg, guibg, ctermfg, ctermbg, opts ].
" See "help attr-list" for valid values for the "opt" value.
let s:N1   = [ s:gui01, s:gui0B, s:cterm01, s:cterm0B ]
let s:N2   = [ s:gui06, s:gui02, s:cterm06, s:cterm02 ]
let s:N3   = [ s:gui09, s:gui01, s:cterm09, s:cterm01 ]
let g:airline#themes#base16_oceanicnext#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#base16_oceanicnext#palette.normal_modified = { 'airline_c': [ s:gui0A, '', s:cterm0A, '' ] }


let s:I1   = [ s:gui01, s:gui0D, s:cterm01, s:cterm0D ]
let s:I2   = [ s:gui06, s:gui02, s:cterm06, s:cterm02 ]
let s:I3   = [ s:gui09, s:gui01, s:cterm09, s:cterm01 ]
let g:airline#themes#base16_oceanicnext#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#base16_oceanicnext#palette.insert_modified = g:airline#themes#base16_oceanicnext#palette.normal_modified
let g:airline#themes#base16_oceanicnext#palette.insert_paste = { 'airline_a': s:I3 }


let s:R1   = [ s:gui01, s:gui08, s:cterm01, s:cterm08 ]
let s:R2   = [ s:gui06, s:gui02, s:cterm06, s:cterm02 ]
let s:R3   = [ s:gui09, s:gui01, s:cterm09, s:cterm01 ]
let g:airline#themes#base16_oceanicnext#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#base16_oceanicnext#palette.replace_modified = g:airline#themes#base16_oceanicnext#palette.normal_modified


let s:V1   = [ s:gui01, s:gui0E, s:cterm01, s:cterm0E ]
let s:V2   = [ s:gui06, s:gui02, s:cterm06, s:cterm02 ]
let s:V3   = [ s:gui09, s:gui01, s:cterm09, s:cterm01 ]
let g:airline#themes#base16_oceanicnext#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#base16_oceanicnext#palette.visual_modified = g:airline#themes#base16_oceanicnext#palette.normal_modified


let s:IA1   = [ s:gui05, s:gui01, s:cterm05, s:cterm01 ]
let s:IA2   = [ s:gui05, s:gui01, s:cterm05, s:cterm01 ]
let s:IA3   = [ s:gui05, s:gui01, s:cterm05, s:cterm01 ]
let g:airline#themes#base16_oceanicnext#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#base16_oceanicnext#palette.inactive_modified = g:airline#themes#base16_oceanicnext#palette.normal_modified


let g:airline#themes#base16_oceanicnext#palette.accents = { 'red': [ s:gui08, '', s:cterm08, '' ] }

" Here we define the color map for ctrlp.  We check for the g:loaded_ctrlp
" variable so that related functionality is loaded iff the user is using
" ctrlp. Note that this is optional, and if you do not define ctrlp colors
" they will be chosen automatically from the existing palette.
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#base16_oceanicnext#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ s:gui07, s:gui02, s:cterm07, s:cterm02, '' ],
      \ [ s:gui07, s:gui04, s:cterm07, s:cterm04, '' ],
      \ [ s:gui05, s:gui01, s:cterm05, s:cterm01, 'bold' ])

" Remove color variables
unlet s:gui00 s:gui01 s:gui02 s:gui03 s:gui04 s:gui05 s:gui06 s:gui07 s:gui08 s:gui09 s:gui0A s:gui0B s:gui0C s:gui0D s:gui0E s:gui0F
unlet s:cterm00 s:cterm01 s:cterm02 s:cterm03 s:cterm04 s:cterm05 s:cterm06 s:cterm07 s:cterm08 s:cterm09 s:cterm0A s:cterm0B s:cterm0C s:cterm0D s:cterm0E s:cterm0F

" vim:filetype=vim
