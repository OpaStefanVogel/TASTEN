


grid [label .k0 -text ""] \
  [label .k1 -text T0] \
  [label .k2 -text T1] \
  [label .k3 -text T2] \
  [label .k4 -text T3]

foreach i {0 1 2 3 4 5} {
  label .t${i} -text V${i}.txt
  foreach j {0 1 2 3} {
    radiobutton .c${i}_t${j} -variable T${j} -value ${i} -command "speichern ${i} ${j}"
    }
  grid .t${i} .c${i}_t0 .c${i}_t1 .c${i}_t2 .c${i}_t3
  }

proc speichern {i j} {
#  puts "exec ln -f -r -s V${i}.txt T${j}.txt  "
  exec ln -f -r -s V${i}.txt T${j}.txt
  }

.c0_t0 invoke 
.c1_t1 invoke 
.c2_t2 invoke 
.c3_t3 invoke 
