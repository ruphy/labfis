
#files = dir('dati_*.txt');
firstFile = 1;
lastFile = 10;

	
for j=firstFile:lastFile
  velocita = [0];
  number = num2str(j)
  
  variable = ['dati_', number];
  file = strcat(variable, '.txt');
  
  x = load(file);
  tempo = x(:,1);
  ang = x(:,2);
  
  dx = diff(tempo);
  dy = diff(ang);
  velocita = dy./dx;

  clf

  plot(tempo, ang, "x")
  hold on
  plot(tempo, velocita, "o")

endfor

