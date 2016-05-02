#set term png size 600,400 font 'helvetica'

#set output 'mtabr-diffconstant.png'

set terminal epslatex size 3.5,2.62 color colortext
set out 'Mvt700K.tex'



#set term pdf  font 'phv' size 4.5,2.4

#set out 'Mvt700K.pdf'



set style line 20 lc rgb '#000000' lt 1

# set border 3 back ls 20

set tics out nomirror

set style line 21 lc rgb '#808080' lt 0 lw 1

set style line 1 lc rgb '#E51D00' pt 1 ps 0.5 lt 1 lw 1.2

set style line 2 lc rgb '#DC6003' pt 2 ps 0.5 lt 1 lw 1.2

set style line 3 lc rgb '#D39B07' pt 3 ps 0.5 lt 1 lw 1.2

set style line 4 lc rgb '#C4CA0A' pt 4 ps 0.5 lt 1 lw 1.2

set style line 5 lc rgb '#86C10D' pt 5 ps 0.5 lt 1 lw 1.2

set style line 6 lc rgb '#4EB80F' pt 6 ps 0.5 lt 1 lw 1.2

set style line 7 lc rgb '#1DAF12' pt 7 ps 0.5 lt 1 lw 1.2

set style line 8 lc rgb '#14A635' pt 8 ps 0.5 lt 1 lw 1.2

set style line 9 lc rgb '#159D5D' pt 9 ps 0.5 lt 1 lw 1.2

set style line 10 lc rgb '#16947E' pt 10 ps 0.5 lt 1 lw 1.2

set style line 11 lc rgb '#187C8B' pt 11 ps 0.5 lt 1 lw 1.2

set style line 12 lc rgb '#4512AF' pt 12 ps 0.5 lt 1 lw 1.2



# set style line 1 lc rgb '#ccebf5' pt 1 ps 0.5 lt 1 lw 0.8

# set style line 2 lc rgb '#b2e0f0' pt 2 ps 0.5 lt 1 lw 0.8

# set style line 3 lc rgb '#99d6eb' pt 3 ps 0.5 lt 1 lw 0.8

# set style line 4 lc rgb '#80cce6' pt 4 ps 0.5 lt 1 lw 0.8

# set style line 5 lc rgb '#66c2e0' pt 5 ps 0.5 lt 1 lw 0.8

# set style line 6 lc rgb '#4db8db' pt 6 ps 0.5 lt 1 lw 0.8

# set style line 7 lc rgb '#33add6' pt 7 ps 0.5 lt 1 lw 0.8

# set style line 8 lc rgb '#19a3d1' pt 8 ps 0.5 lt 1 lw 0.8

# set style line 9 lc rgb '#0099cc' pt 9 ps 0.5 lt 1 lw 0.8

# set style line 10 lc rgb '#008ab8' pt 10 ps 0.5 lt 1 lw 0.8

# set style line 11 lc rgb '#007aa3' pt 11 ps 0.5 lt 1 lw 0.8

# set style line 12 lc rgb '#006b8f' pt 12 ps 0.5 lt 1 lw 0.8

# set style line 13 lc rgb '#005c7a' pt 13 ps 0.5 lt 1 lw 0.8

# set style line 14 lc rgb '#004c66' pt 14 ps 0.5 lt 1 lw 0.8

# set style line 15 lc rgb '#003d52' pt 15 ps 0.5 lt 1 lw 0.8

# set style line 16 lc rgb '#002e3d' pt 16 ps 0.5 lt 1 lw 0.8

# set style line 17 lc rgb '#001f29' pt 17 ps 0.5 lt 1 lw 0.8

# set style line 18 lc rgb '#000f14' pt 18 ps 0.5 lt 1 lw 0.8

# set style line 19 lc rgb '#000000' pt 19 ps 0.5 lt 1 lw 0.8



set obj rect from 300,0 to 600,1 behind fc rgb '#663366' #fillstyle transparent solid 0.2 noborder



set key rmargin
set key 6.1


#set xtics 200

#set mxtics 2



#set ytics 0.1

#set mytics 2



set xlabel "time (ns)"

set ylabel "M_z"

set xrange [0:8]
set yrange [-1:1]



plot	'run/0.1/output' u ($1*1e9):($6*$7) w lp ls 1 t 'ECC', \
	    'run/0.1/output' u ($1*1e9):($10*$11) w lp ls 2 t 'Fe',\
		'run/0.1/output' u ($1*1e9):($14*$15) w lp ls 3 t 'FePt'
