#!/usr/local/bin/gnuplot -persist

appDir = 'data/set2/'

set multiplot layout 2, 1 ;

set ylabel 'count'
set xlabel 'time'

plot appDir.'total-thread-count.dat' smooth csplines with lines linestyle 1 \
                                 title 'Count of Total Threads'
plot appDir.'performance-thread-count.dat' smooth csplines with lines linestyle 2 \
                                 title 'Count of Performance Threads'
unset multiplot
