syn keyword tcl_statement force run force value stop
syn match tcl_not "!="
syn match tcl_shift "<<"
syn match tcl_shift ">>"

"highlight tcl_statement ctermfg=brown
highlight tcl_statement ctermfg=3
highlight tcl_not ctermfg=42
highlight tcl_shift ctermfg=red

inorea tcl_write_file_Ent <esc>:set formatoptions-=cro<cr>i
            \set lst {apple banana orange}<cr>
            \set fh [open "out.txt" w]<cr>
            \foreach item $lst {<cr>
            \puts $fh $item<cr>
            \}<cr>
            \close $fh<cr>
            \<esc>:set formatoptions+=cro<cr>

inorea tcl_find_port_ent <esc>:set formatoptions-=cro<cr>i
            \set hierachy "__fill"<cr>
            \set tmp_lst [find -absolute -newline -scope $hierachy -ports *]<cr>
            \<esc>:set formatoptions+=cro<cr>

inorea tcl_imc_load <esc>:set formatoptions-=cro<cr>i
            \# imc -exec <this_file>.tcl
            \load coverage_db<cr>
            \load -refinement BLK_CPUCL_v4p7p0_dft.vRefine<cr>
            \exclude -inst hdx_cpucl_tb.u_BLK_WRAPPER.u_BLK_CPUCL0.*....*tessent*...  -comment "For DFT"<cr>
            \save -refinement done.vRefine<cr>
            \<esc>:set formatoptions+=cro<cr>
