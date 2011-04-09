# Making histograms within gnuplot - 
# cunning trick using gnuplot's "smooth frequency"
#
# method 1:
#
# to make a histogram with vertical axis equal to the count
# in a bin:
#
bin_width = 0.05; ## edit this 
#bin_number(x) = floor(x/bin_width)
#rounded(x) = bin_width * ( bin_number(x) + 0.5 )
#UNITY = 1
## column number of data to be histogrammed is here assumed to be 1
## - change $1 to another column if desired
#plot 'data.dat' u ($1):1 t 'Misurazioni' smooth frequency w histeps 0.05

set autoscale
mu=1.58
sig=0.03
#xmin=
g(x)=1/(sig*sqrt(pi))*exp(-(x-mu)**2/(2*sig**2))

#plot [xmin:xmax] f(x) title "Maxwell" w boxes fs solid 0.2 lt 1, \
        
gauss(x) = e**((x-1.56)**2/0.02)
bw = 0.02   # delta x interval
bin(x,width)=width*floor(x/width) 
plot 'data.dat' using (bin($1,bw)):(1.0) smooth freq with boxes, \
  g(x) title "Gauss" #w boxes lt 3
#splot 'data.dat' using 1

  #f(x)

pause -1 'ready'
#
# method 2:
#
# to make a histogram with *area* of a bin equal to the count
# in a bin, so the area under the curve is the number of data:
#
bin_width = 0.3
bin_number(x) = floor(x/bin_width)
rounded(x) = bin_width * ( bin_number(x) + 0.5 )
UNITY = 1
#plot 'data.dat' u (rounded($1)):(UNITY/bin_width) t 'data' smooth frequency w histeps

#pause -1 'ready'
#
# method 2, second example, which illustrates why you might sometimes
# prefer method 2 to method 1 (namely, to make it possible to
# superpose two histograms of the same data):
#
bin_width = 0.05
bin_number(x) = floor(x/bin_width)
rounded(x) = bin_width * ( bin_number(x) + 0.5 )
UNITY = 1
#plot 'data.dat' u (rounded($1)):(UNITY/bin_width) t 'width 0.3' smooth frequency w histeps
#pause -1


