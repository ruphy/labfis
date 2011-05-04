# 2011 - Laboratorio di fisica
# Maria Cristina Fortuna
# Marco Giglio
# Riccardo Iaconelli

# File di laboratorio
#
# Parametri:
#
# Dimensione dell'intervallo, per l'istogramma

dk = 0.01

# Altre proprietà
#
# Griglia: on/off
gridon = "on"

# Array con dati sperimentali
a = [ 1.44 1.48 1.48 1.48 1.48 1.48 1.44 1.48 1.48 1.48 1.44 1.48 1.48 1.48 1.48 1.44 1.44 1.48]


figure(1)
clf

### Parte I ###
# Istogramma

sigma = std(a)
mu = mean(a)
bins = min(a):dk:max(a)

hold on
grid(gridon)

# Istogramma

hist(a, bins, 1/dk)

# Gaussiana

x = linspace(mean(a)-3*std(a),mean(a)+3*std(a),300);
y = (1/(sigma*sqrt(2*pi))) * exp(-((x-mu).^2 / (2*(sigma.^2)) ) );
plot (x, y)

printf("Media: %f\nDev. std: %f\n", mean(a), std(a))
