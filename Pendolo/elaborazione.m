
#files = dir('dati_*.txt');
firstFile = 1;
lastFile = 10;

for j=firstFile:1:lastFile
    velocita = [0];
    number = num2str(j)
 
    variable = ['dati_', number];
    file = strcat(variable, '.txt');
    
    eval(['load ' file]);
#    eval(['data', num2str(data), ' = ', variable, ';'])
    tempo = dati_1.txt(:,1) #load(file, (:, 1))
    ang = dati_1.txt(:, 2)

    for i = (1 : (numel(tempo)-1));
        dx = (tempo(i)-tempo(i+1))
        dy = (ang(i)-ang(i+1))
        nv =  (dy/dx)
        velocita  = [velocita, nv];
    endfor

    clf

    plot(tempo, ang, "x")
    hold on
    plot(tempo, velocita, "o")

end



