
# plot x-y components of the total magnetisation of ECC media during the reversal mechanism
# author: Razvan Ababei

# load the format and color scheme
load "/mnt/c/Users/Razvan/Desktop/Data-tools/ColourPalette.style"
#load "/mnt/c/Users/Razvan/Desktop/Data-tools/BlueGoldPalette.style" 
#load "/mnt/c/Users/Razvan/Desktop/Data-tools/BlueGold.style"
#load "/mnt/c/Users/Razvan/Desktop/Data-tools/BlueGoldSS.style"
#load "/mnt/c/Users/Razvan/Desktop/Data-tools/dark-matt.pal"
#load "/mnt/c/Users/Razvan/Desktop/Data-tools/BlueWhiteOrangeRedSS.style"
#load "/mnt/c/Users/Razvan/Desktop/Data-tools/BlueGoldPalette.style"
#load "/mnt/c/Users/Razvan/Desktop/Data-tools/nature.journal"

set term postscript eps enhanced color lw 2.0 font 'Helvetica,18' size 3.5,4.675
set output "XvsV_t.eps"

time_factor = 1e9
set style increment user
set xzeroaxis
set multiplot

N=3
toph=0.05
both=0.1
midh=0.025

#set number of graphs on same figure
figh=(1.0-toph-both-(N-1)*midh)/N

set yrange[-250:250]
set ytics 100

set xlabel "Time (ns)"
set ylabel "X_{DW} (nm)"
#set key outside;
set key right top

#FIG1---------------------------------------------------------------------------------------------
set bmargin at screen both
set tmargin at screen both+figh
set lmargin at screen 0.18
set rmargin at screen 0.75

#set bmargin at screen both+figh+midh
#set tmargin at screen both+figh+midh
unset ylabel
set xlabel "Time (ns)"
set label 2 at 16,200 "(c) 100 A/m"
unset ylabel
p[0:50] "original_size/H.100/T.0/output" u 1:2 w l ls 1 lw 1.2 t"" ,"original_size/H.100/T.300/output" u 1:2 w l ls 3 lw 1.2 t"" ,"original_size/H.500/T.100/output" u 1:2 w l ls 7 lw 1.2 t"" 

unset label 2
#-------------------------------------------------------------------------------------------------------------
#unset ylabel
unset xtics
#set xlabel "Time (ns)"
unset xlabel

#set ytics 1.0
set ylabel "X_{DW} (nm)"
set bmargin at screen both+1*figh+1*midh
set tmargin at screen both+2*figh+2*midh
set label 3 at 16,200 "(b) 1000 A/m"

#p[0:10] for [i=0:500:100] "H.1000/T.".i."/output" u 1:2 w l ls i/100 lw 1.2t"" # "H= 100 A/m"
p[0:50] "original_size/H.1000/T.0/output" u 1:2 w l ls 1 lw 1.2 t"" ,"original_size/H.1000/T.300/output" u 1:2 w l ls 3 lw 1.2 t"" ,"original_size/H.1000/T.500/output" u 1:2 w l ls 7 lw 1.2 t"" 

unset label 3
#-------------------------------------------------------------------------------------------------------------
set bmargin at screen both+2*figh+3*midh
set tmargin at screen both+3*figh+3*midh
unset xlabel
unset ylabel
unset xtics
set key outside
set key right top 
set key samplen 3
set label 4 at 16,200 "(a) 2000 A/m"

#p[0:10] for [i=0:500:100] "H.2000/T.".i."/output" u 1:2 w l ls i/100 lw 1.2t"".i."K"# "H= 100 A/m"
p[0:50] "original_size/H.2000/T.0/output" u 1:2 w l ls 1 lw 1.2 t"T=0 K" ,"original_size/H.2000/T.300/output" u 1:2 w l ls 3 lw 1.2 t"300 K" ,"original_size/H.2000/T.500/output" u 1:2 w l ls 7 lw 1.2 t"500 K" 

unset label 4
unset multiplot

