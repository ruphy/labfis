# 2011 - Laboratorio di fisica
# Maria Cristina Fortuna
# Marco Giglio
# Riccardo Iaconelli

# File di laboratorio
#
# Parametri:
#
# Dimensione dell'intervallo, per l'istogramma

function x, y = gauss_analysis(caption, dk, a)

# Altre proprietà
#
# Griglia: on/off
gridon = "on";


figure(1)
clf

### Parte I ###
# Istogramma

sigma = std(a);
mu = mean(a);
bins = min(a):dk:max(a);

hold on
grid(gridon)

# Istogramma

hist(a, bins, 1/dk)

# Gaussiana

x = linspace(mean(a)-3*std(a),mean(a)+3*std(a),300);
y = (1/(sigma*sqrt(2*pi))) * exp(-((x-mu).^2 / (2*(sigma.^2)) ) );
# plot (x, y)

#printf("**************************************\n");
printf("== %s ==\n", caption);
printf("    Media: %f\n    Dev. std: %f\n\n", mean(a), std(a))
#printf("**************************************\n");

endfunction

