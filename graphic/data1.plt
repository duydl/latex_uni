# plot file data1.plt

set xlabel 'Number of steps'
set ylabel 'Results of Computation'
set yrange [1.8:3]
set xrange [0:100]
set terminal wxt size 2048, 1536 font ",16"
set style line 1 \
    linecolor rgb '#0060ad' \
    linetype 1 linewidth 2 \
    pointtype 7 pointsize 1.5

plot 'data1.dat' title "Series Expression" with linespoints linestyle 1
