


grid [label .l0 -text ""] \
  [label .l1h -text T1↑] [label .l1l -text T1↓] \
  [label .l2h -text T2↑] [label .l2l -text T2↓] \
  [label .l3h -text T3↑] [label .l3l -text T3↓] \
  [label .l4h -text T4↑] [label .l4l -text T4↓]

foreach i {1 2 3 4 5 6} {
  label .l${i} -text "LED ein"
  foreach j {1 2 3 4} {
    checkbutton .b${i}_t${j}h -command speichern
    checkbutton .b${i}_t${j}l -command speichern
    }
  grid .l${i} .b${i}_t1h .b${i}_t1l .b${i}_t2h .b${i}_t2l .b${i}_t3h .b${i}_t3l .b${i}_t4h .b${i}_t4l
  }

grid [label .k0 -text ""] \
  [label .k1 -text T0] \
  [label .k2 -text T1] \
  [label .k3 -text T2] \
  [label .k4 -text T3]

set T0 0
set T1 1
set T2 2
set T3 3

foreach i {0 1 2 3 4 5} {
  label .t${i} -text V${i}.txt
  foreach j {0 1 2 3} {
    radiobutton .c${i}_t${j} -variable T${j} -value ${i} -command speichern
    }
  grid .t${i} .c${i}_t0 .c${i}_t1 .c${i}_t2 .c${i}_t3
  }


#grid configure .l1 .l2 .l3 .l4 -columnspan 2

proc speichern {} {
  global b1_t1h b1_t1l b1_t2h b1_t2l b1_t3h b1_t3l b1_t4h b1_t4l
  global b2_t1h b2_t1l b2_t2h b2_t2l b2_t3h b2_t3l b2_t4h b2_t4l
  global b3_t1h b3_t1l b3_t2h b3_t2l b3_t3h b3_t3l b3_t4h b3_t4l
  global b4_t1h b4_t1l b4_t2h b4_t2l b4_t3h b4_t3l b4_t4h b4_t4l
  global b5_t1h b5_t1l b5_t2h b5_t2l b5_t3h b5_t3l b5_t4h b5_t4l
  global b6_t1h b6_t1l b6_t2h b6_t2l b6_t3h b6_t3l b6_t4h b6_t4l
  set outfile [open "Verbindungen.txt" w]
  puts $outfile "Verbindungen=\["
  puts $outfile "  \[ $b1_t1h , $b1_t1l , $b1_t2h , $b1_t2l , $b1_t3h , $b1_t3l , $b1_t4h , $b1_t4l \] , "
  puts $outfile "  \[ $b2_t1h , $b2_t1l , $b2_t2h , $b2_t2l , $b2_t3h , $b2_t3l , $b2_t4h , $b2_t4l \] , "
  puts $outfile "  \[ $b3_t1h , $b3_t1l , $b3_t2h , $b3_t2l , $b3_t3h , $b3_t3l , $b3_t4h , $b3_t4l \] , "
  puts $outfile "  \[ $b4_t1h , $b4_t1l , $b4_t2h , $b4_t2l , $b4_t3h , $b4_t3l , $b4_t4h , $b4_t4l \] , "
  puts $outfile "  \[ $b5_t1h , $b5_t1l , $b5_t2h , $b5_t2l , $b5_t3h , $b5_t3l , $b5_t4h , $b3_t4l \] , "
  puts $outfile "  \[ $b6_t1h , $b6_t1l , $b6_t2h , $b6_t2l , $b6_t3h , $b6_t3l , $b6_t4h , $b6_t4l \] , "
  puts $outfile "  \];"
  close $outfile
  }

.b1_t1h invoke
.b2_t1l invoke
.b3_t2h invoke
.b4_t2l invoke
.b5_t3h invoke
.b6_t3l invoke
