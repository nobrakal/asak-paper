set datafile separator ','
set logscale y
set xtics rotate by -45
set tics scale 0
set xlabel "Cardinal de classes"
set ylabel "Nombre de classe"
set title "Nombre de classe en fonction de leur cardinal"

set term png size 1000, 500

set rmargin 4

plot 'data.csv' using 2:xtic(int($0)%5==0 ? strcol(1):'') with boxes notitle