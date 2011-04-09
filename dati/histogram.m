# 2011 - Laboratorio di fisica
# Maria Cristina Fortuna
# Marco Giglio
# Riccardo Iaconelli

# File di laboratorio
#
# Parametri:
#
# Dimensione dell'intervallo, per l'istogramma

dk = 0.07

# Intervalli parziali di cui fare la media (numero di intervalli)
# Se intn = 1, disegna la media di tutto
intn = 10

# Altre proprietà
#
# Griglia: on/off
gridon = "on"

# Array con dati sperimentali

# 6mm
a6 = [1.68 1.68 1.65 1.68 1.68 1.62 1.71 1.71 1.75 1.78 1.71 1.71 1.65 1.59 1.65 1.71  1.68 1.68 1.65 1.62 1.56 1.71 1.71 1.68 1.62 1.59 1.59 1.53 1.59 1.46 1.62 1.59 1.56 1.62 1.56 1.62 1.43 1.53 1.59 1.56 1.56 1.53 1.62 1.68 1.56 1.56 1.59 1.59 1.50 1.53 1.62 1.50 1.56 1.59 1.62 1.43 1.62 1.43 1.40 1.59 1.46 1.46 1.59 1.65 1.59 1.68 1.43 1.58 1.53 1.62 1.46 1.50 1.56 1.59 1.50 1.59 1.59 1.59 1.53 1.59 1.59 1.46 1.53 1.43 1.53 1.46 1.46 1.56 1.40 1.34 1.46 1.37 1.50 1.50 1.43 1.31 1.40 1.43 1.34 1.43]

# 3mm
a3 = [ 5.28 5.09 4.96 5.25 5.28 5.12 5.06 5.12 5.06 5.28 5.03 5.06 4.87 4.90 4.96 5.06 5.06 4.95 4.93 5.18 5.18 5.18 5.21 4.87 5.34  ]
# 4mm
a4 = [ 3.06 3.09 3.15 3.12 3.03 3.15 3.25 3.25 3.18 3.09 3.09 3.09 3.21 3.12 3.06 3.06 3.15 3.46 3.25 3.12 ]
# 5mm
a5 =[ 2.31 2.21 2.12 2.21 2.12 2.34 2.18 2.34 2.12 2.06 2.12 2.03 2.06 2.21 2.21 2.12 2.03 2.09 2.12 2.46 2.06 2.25 2.15 2.25 2.00]

a=a6

figure(1)
clearplot

### Parte I ###
# Istogramma

sigma = std(a)
mu = mean(a)
bins = min(a):dk:max(a)

subplot (3, 3, 1)
hold on
grid(gridon)

# Istogramma

hist(a, bins, 1/dk)

# Gaussiana

x = linspace(mean(a)-3*std(a),mean(a)+3*std(a),300);
y = (1/(sigma*sqrt(2*pi))) * exp(-((x-mu).^2 / (2*(sigma.^2)) ) );
plot (x, y)


xlabel("Tempo (s)")
ylabel("F/(N*dk)")
hold off

### Parte II ###
# Grafico dei dati

subplot (3, 3, 2)
hold on
grid(gridon)

# Disegno dei punti

plot(a, "@")

x = linspace(1, numel(a), 3*numel(a))
y = linspace(mean(a), mean(a), 3*numel(a))
plot(x,y, ".1;Media;")

x = linspace(1, numel(a), 3*numel(a))
y = linspace(mean(a)+std(a), mean(a)+std(a), 3*numel(a))
plot(x,y, "1;Deviazione Standard;")

x = linspace(1, numel(a), 3*numel(a))
y = linspace(mean(a)-std(a), mean(a)-std(a), 3*numel(a))
plot(x,y, "1")

#
# Disegna medie parziali
# Imposta la variabile intn per controllarlo
#
dval = numel(a)/intn
for i = (1 : intn);
    b = a([floor((i*dval)-(dval-1)) :  i*dval])
    x = linspace(floor((i*dval)-(dval-1)), i*dval, 3*dval)
    y = linspace(mean(b), mean(b), 3*dval)
    plot(x,y, "1")
 endfor

ylabel("Tempo (s)")
hold off

### Parte III ###
# La descrizione

subplot (3, 3, 3)
axis([0, 3, 0, 3]);
text(1, 1, strcat("Media: ", num2str(mean(a))))
text(1, 2, strcat("Dev. Std: ", num2str(std(a))))

### Parte 4 ###
# Velocità
subplot (3, 3, 4)
hold on

grid(gridon)

spazio=15.1
#mean(a)
x = [spazio/mean(a6), spazio/mean(a5), spazio/mean(a4), spazio/mean(a3)]
y = [3, 2.5, 2, 1.5]
plot(x,y, "@")
ylabel("Raggio (mm)")
xlabel("Velocità (cm/s)")
axis([0, 10, 0, 7]);

### Parte 5 ###
# Velocità (r²)
subplot (3, 3, 5)
hold on

grid(gridon)

spazio=15.1
x = [spazio/mean(a6), spazio/mean(a5), spazio/mean(a4), spazio/mean(a3)]
y = [9, 6.25, 4, 2.25]
plot(y,x, "@")

x2 = linspace(0,10,30)
y2 = 1.022*x2 -0.90537822
plot(y2,x2, "1")
ylabel("Raggio^2 (mm^2)")
xlabel("Velocita` (cm/s)")
axis([0, 10, 0, 10]);

puts x

### Parte 6 ###
# Velocità (log)
subplot (3, 3, 6)
hold on
grid(gridon)

raggio = 5
spazio=15.1
#mean(a)
x = [spazio/mean(a6), spazio/mean(a5), spazio/mean(a4), spazio/mean(a3)]
#x = linspace(spazio/mean(a), spazio/mean(a), 3*numel(a))
y = [3, 2.5, 2, 1.5]
plot(x,y, "@")
set(gca(), "xscale", "log")
set(gca(), "yscale", "log")
ylabel("Raggio (mm)")
xlabel("Velocità (cm/s)")

interp1(x, y, "linear")
# Debug
#puts(chisquare_test_independence(a))

#for xi = a
#  fprintf("Xi  %f", xi)
#endfor

#fprintf("Media: %f\n", mean(a));
#fprintf("Deviazione Standard: %f\n", std(a));
#print('-dtex', 'my_plot.tex');