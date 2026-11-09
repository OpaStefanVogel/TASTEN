


grid [label .l0 -text ""] \
  [label .l1h -text T1↑] [label .l1l -text T1↓] \
  [label .l2h -text T2↑] [label .l2l -text T2↓] \
  [label .l3h -text T3↑] [label .l3l -text T3↓] \
  [label .l4h -text T4↑] [label .l4l -text T4↓]



  label .l1 -text "LED ein"
  checkbutton .b1_t1h -variable v1_t1h -command speichern
  checkbutton .b1_t1l -variable v1_t1l -command speichern
  checkbutton .b1_t2h -variable v1_t2h -command speichern
  checkbutton .b1_t2l -variable v1_t2l -command speichern
  checkbutton .b1_t3h -variable v1_t3h -command speichern
  checkbutton .b1_t3l -variable v1_t3l -command speichern
  checkbutton .b1_t4h -variable v1_t4h -command speichern
  checkbutton .b1_t4l -variable v1_t4l -command speichern
  grid .l1 .b1_t1h .b1_t1l .b1_t2h .b1_t2l .b1_t3h .b1_t3l .b1_t4h .b1_t4l

  label .l2 -text "LED aus"
  checkbutton .b2_t1h -variable v2_t1h -command speichern
  checkbutton .b2_t1l -variable v2_t1l -command speichern
  checkbutton .b2_t2h -variable v2_t2h -command speichern
  checkbutton .b2_t2l -variable v2_t2l -command speichern
  checkbutton .b2_t3h -variable v2_t3h -command speichern
  checkbutton .b2_t3l -variable v2_t3l -command speichern
  checkbutton .b2_t4h -variable v2_t4h -command speichern
  checkbutton .b2_t4l -variable v2_t4l -command speichern
  grid .l2 .b2_t1h .b2_t1l .b2_t2h .b2_t2l .b2_t3h .b2_t3l .b2_t4h .b2_t4l

  label .l3 -text "Display ein"
  checkbutton .b3_t1h -variable v3_t1h -command speichern
  checkbutton .b3_t1l -variable v3_t1l -command speichern
  checkbutton .b3_t2h -variable v3_t2h -command speichern
  checkbutton .b3_t2l -variable v3_t2l -command speichern
  checkbutton .b3_t3h -variable v3_t3h -command speichern
  checkbutton .b3_t3l -variable v3_t3l -command speichern
  checkbutton .b3_t4h -variable v3_t4h -command speichern
  checkbutton .b3_t4l -variable v3_t4l -command speichern
  grid .l3 .b3_t1h .b3_t1l .b3_t2h .b3_t2l .b3_t3h .b3_t3l .b3_t4h .b3_t4l

  label .l4 -text "Display aus"
  checkbutton .b4_t1h -variable v4_t1h -command speichern
  checkbutton .b4_t1l -variable v4_t1l -command speichern
  checkbutton .b4_t2h -variable v4_t2h -command speichern
  checkbutton .b4_t2l -variable v4_t2l -command speichern
  checkbutton .b4_t3h -variable v4_t3h -command speichern
  checkbutton .b4_t3l -variable v4_t3l -command speichern
  checkbutton .b4_t4h -variable v4_t4h -command speichern
  checkbutton .b4_t4l -variable v4_t4l -command speichern
  grid .l4 .b4_t1h .b4_t1l .b4_t2h .b4_t2l .b4_t3h .b4_t3l .b4_t4h .b4_t4l

  label .l5 -text "Radio ein"
  checkbutton .b5_t1h -variable v5_t1h -command speichern
  checkbutton .b5_t1l -variable v5_t1l -command speichern
  checkbutton .b5_t2h -variable v5_t2h -command speichern
  checkbutton .b5_t2l -variable v5_t2l -command speichern
  checkbutton .b5_t3h -variable v5_t3h -command speichern
  checkbutton .b5_t3l -variable v5_t3l -command speichern
  checkbutton .b5_t4h -variable v5_t4h -command speichern
  checkbutton .b5_t4l -variable v5_t4l -command speichern
  grid .l5 .b5_t1h .b5_t1l .b5_t2h .b5_t2l .b5_t3h .b5_t3l .b5_t4h .b5_t4l

  label .l6 -text "Radio aus"
  checkbutton .b6_t1h -variable v6_t1h -command speichern
  checkbutton .b6_t1l -variable v6_t1l -command speichern
  checkbutton .b6_t2h -variable v6_t2h -command speichern
  checkbutton .b6_t2l -variable v6_t2l -command speichern
  checkbutton .b6_t3h -variable v6_t3h -command speichern
  checkbutton .b6_t3l -variable v6_t3l -command speichern
  checkbutton .b6_t4h -variable v6_t4h -command speichern
  checkbutton .b6_t4l -variable v6_t4l -command speichern
  grid .l6 .b6_t1h .b6_t1l .b6_t2h .b6_t2l .b6_t3h .b6_t3l .b6_t4h .b6_t4l



#grid configure .l1 .l2 .l3 .l4 -columnspan 2

proc speichern {} {
  global v1_t1h v1_t1l v1_t2h v1_t2l v1_t3h v1_t3l v1_t4h v1_t4l
  global v2_t1h v2_t1l v2_t2h v2_t2l v2_t3h v2_t3l v2_t4h v2_t4l
  global v3_t1h v3_t1l v3_t2h v3_t2l v3_t3h v3_t3l v3_t4h v3_t4l
  global v4_t1h v4_t1l v4_t2h v4_t2l v4_t3h v4_t3l v4_t4h v4_t4l
  global v5_t1h v5_t1l v5_t2h v5_t2l v5_t3h v5_t3l v5_t4h v5_t4l
  global v6_t1h v6_t1l v6_t2h v6_t2l v6_t3h v6_t3l v6_t4h v6_t4l
  set outfile [open "Verbindungen.txt" w]
  puts $outfile "Verbindungen=\["
  puts $outfile "  \[ $v1_t1h , $v1_t1l , $v1_t2h , $v1_t2l , $v1_t3h , $v1_t3l , $v1_t4h , $v1_t4l \] , "
  puts $outfile "  \[ $v2_t1h , $v2_t1l , $v2_t2h , $v2_t2l , $v2_t3h , $v2_t3l , $v2_t4h , $v2_t4l \] , "
  puts $outfile "  \[ $v3_t1h , $v3_t1l , $v3_t2h , $v3_t2l , $v3_t3h , $v3_t3l , $v3_t4h , $v3_t4l \] , "
  puts $outfile "  \[ $v4_t1h , $v4_t1l , $v4_t2h , $v4_t2l , $v4_t3h , $v4_t3l , $v4_t4h , $v4_t4l \] , "
  puts $outfile "  \[ $v5_t1h , $v5_t1l , $v5_t2h , $v5_t2l , $v5_t3h , $v5_t3l , $v5_t4h , $v3_t4l \] , "
  puts $outfile "  \[ $v6_t1h , $v6_t1l , $v6_t2h , $v6_t2l , $v6_t3h , $v6_t3l , $v6_t4h , $v6_t4l \] , "
  puts $outfile "  \];"
  close $outfile
  }

.b1_t1h invoke
.b2_t1l invoke
.b3_t2h invoke
.b4_t2l invoke
.b5_t3h invoke
.b6_t3l invoke
