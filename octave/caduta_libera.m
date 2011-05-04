# Caduta libera
# Raccolta del dato: Tempi (ms)
# Distanze \pm 1cm. Possibile che la sferetta parta circa un centimetro sotto la distanza dichiarata
# Sferette d'acciaio cadono su di un bersaglio cronometrato

# x = scalar (meters), t = scalar (secs)
function calcolag(x, t)
  t2 = t+0.003;
  g = (2*x)./(t2*t2);
  printf(" >> g stimata: %f\n", g);
  printf(" >> errore: %f\n\n", (g-9.81)/9.81);
endfunction

# 20 cm
tempi = [197 198 197 197 203 203 204 196 199 196 205 198 199 198 197 198 197 198 198];
gauss_analysis("20 cm", 1, tempi);
calcolag(0.2, mean(tempi)/1000);

# 35 cm
tempi = [265 265 265 261 262 263 266 262 269 266 261 263 262 261];
gauss_analysis("35 cm", 1, tempi);
calcolag(0.35, mean(tempi)/1000);

# 50 cm
tempi = [314 315 314 321 319 316 315 315 315 314 314 315];
gauss_analysis("50 cm", 2, tempi);
calcolag(0.5, mean(tempi)/1000);

# 60 cm
tempi = [347 345 346 347 344 344 348 345 346 344 345 345];
gauss_analysis("60 cm", 2, tempi);
calcolag(0.6, mean(tempi)/1000);

# 90 cm
tempi = [424 424 424 427 423 424 423 428 424 423 422 423];
gauss_analysis("90 cm", 2, tempi);
calcolag(0.9, mean(tempi)/1000);



