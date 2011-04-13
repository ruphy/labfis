
#files = dir('dati_*.txt');
firstFile = 1;
lastFile = 10;

clf
	
for j=firstFile:lastFile
  vel = [0];
  number = num2str(j)
  
  variable = ['dati_', number];
  file = strcat(variable, '.txt');
  
  x = load(file);
  tempo = x(:,1);
  ang = x(:,2);
  
  dx = diff(tempo);
  dy = diff(ang);
  velocita = dy./dx;
  
  velo = velocita(1:5*floor(length(velocita)/5));
  tem = tempo(1:5*floor((length(tempo)-1)/5));
  dxx = mean(reshape(tem, length(tem)/5, 5));
  dyy = mean(reshape(velo, length(velo)/5, 5));
  acc = dyy./dxx;
      
#  me = 3
#  for i = (me: me :(numel(velocita)-1-me));
#      dx = (tempo(me+i+1)-tempo(me+i))
#      dy = (velocita(me+i+1)-velocita(me+i))
#      nv =  (dy./dx)
#      vel  = [vel, nv];
#  endfor
    
  hold on
  plot(tempo(1:end-1), velocita, "o")
  plot(tem, acc, "1")

endfor

