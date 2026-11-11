wm geometry . +180+42

set Verbindungen {LED Display Radio Bus62 Bus31 {Drehen links} {Drehen rechts} Kippen Festhalten Loslassen ausschalten}

grid [label .a0 -text ""] \
  [label .k0 -text T0] \
  [label .k1 -text T1] \
  [label .k2 -text T2] \
  [label .k3 -text T3] \
  [label .k4 -text T4] \
  [label .k5 -text T5]

foreach i {0 1 2 3 4 5 6 7 8 9 10} {
  label .t${i} -text [lindex $Verbindungen $i]
  foreach j {0 1 2 3 4 5} {
    radiobutton .c${i}_t${j} -variable T${j} -value ${i} -command "speichern ${i} ${j}"
    }
  grid .t${i} .c${i}_t0 .c${i}_t1 .c${i}_t2 .c${i}_t3 .c${i}_t4 .c${i}_t5 -sticky e
  }

proc speichern {i j} {
#  puts "exec ln -f -r -s V${i}.txt T${j}.txt  "
  exec ln -f -r -s V${i}.txt T${j}.txt
  }

.c0_t0 invoke 
.c1_t1 invoke 
.c2_t2 invoke 
.c3_t3 invoke 
.c4_t4 invoke 
.c5_t5 invoke 

#grid configure
grid configure .t10
grid configure .t10 -sticky w
