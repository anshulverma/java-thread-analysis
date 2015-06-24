#!/usr/local/bin/gnuplot

appDir = 'data/app2/'

set xlabel 'time'
set ylabel 'count'

plot appDir.'thread-types.csv' using 1:2 smooth csplines with lines linestyle 1 \
                               title 'Waiting (on object)', \
     appDir.'thread-types.csv' using 1:3 smooth csplines with lines linestyle 2 \
                               title 'Waiting (parking)', \
     appDir.'thread-types.csv' using 1:4 smooth csplines with lines linestyle 3 \
                               title 'Runnable', \
     appDir.'thread-types.csv' using 1:5 smooth csplines with lines linestyle 4 \
                               title 'Timed Waiting (on object)', \
     appDir.'thread-types.csv' using 1:6 smooth csplines with lines linestyle 5 \
                               title 'Timed Waiting (Sleeping)', \
     appDir.'thread-types.csv' using 1:7 smooth csplines with lines linestyle 6 \
                               title 'Timed Waiting (parking)', \
     appDir.'thread-types.csv' using 1:8 smooth csplines with lines linestyle 7 \
                               title 'Blocked', \
     appDir.'thread-types.csv' using 1:9 smooth csplines with lines linestyle 8 \
                               title 'Terminated'

unset multiplot
