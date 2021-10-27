load "/mnt/c/Users/Razvan/Desktop/Data-tools/nature.journal" 
load "/mnt/c/Users/Razvan/Desktop/Data-tools/ColourPalette.style" 
set term postscript eps enhanced color lw 2.0 font 'Helvetica,18' size 6,4.5
set style increment user
set output "heatmap.eps"
set multiplot 


set pm3d map
set cblabel "Accuracy (%)"
set cbrange [40:95]
set autoscale fix 
set key on left
set xlabel "H_0 (kA/m)" offset -2
set ylabel "{/Symbol D}H (kA/m)" offset -2
set xtics "1.0"
set ytics "1.0"
set format x "%.0f"
set format y "%.0f"

set lmargin at screen 0.10
set rmargin at screen 0.48
set bmargin at screen 0.56
set tmargin at screen 0.96
unset xlabel
set format x ''
set ylabel "{/Symbol D}H (kA/m)" 
#unset colorbox
set colorbox user origin 0.91,0.12 size 0.015,0.84
sp[:3.5][:3.5] "T0/aici" u ($1/1000):($2/1000):($3+$6+$9+$12+$15+$18+$21+$24+$27+$30)/64  t "(a) 0 K"


set lmargin at screen 0.50
set rmargin at screen 0.90
unset xlabel
unset ylabel
unset colorbox
set format x ''
set format y ''
sp[:3.5][:3.5] "T50/aici" u ($1/1000):($2/1000):($3+$6+$9+$12+$15+$18+$21+$24+$27+$30)/64  t "(b) 50 K"

set lmargin at screen 0.10
set rmargin at screen 0.48
set bmargin at screen 0.12
set tmargin at screen 0.52
# Set outward tics on left axis only                                                            
set format x "%.0f"
set format y "%.0f" 
set xlabel "H_0 (kA/m)" 
set ylabel "{/Symbol D}H (kA/m)" offset -2 
unset colorbox
sp[:3.5][:3.5] "T100/aici" u ($1/1000):($2/1000):($3+$6+$9+$12+$15+$18+$21+$24+$27+$30)/64 t "(c) 100 K" 

set lmargin at screen 0.50
set rmargin at screen 0.90
unset ylabel
set format y ""
set format x "%.0f"
set xlabel "H_0 (kA/m)" offset -2
unset colorbox
sp[:3.5][:3.5]"T300/aici" u ($1/1000):($2/1000):($3+$6+$9+$12+$15+$18+$21+$24+$27+$30)/64 t "(d) 300 K"
unset multiplot
