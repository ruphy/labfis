# 2011 - Laboratorio di fisica
# Maria Cristina Fortuna
# Marco Giglio
# Riccardo Iaconelli

# 15 cm dal primo coltello
t1_1 = [ 1.9816 1.9794 1.9821 1.9805 1.9802 1.9804 1.9810 1.9809 1.9796 ];
t2_1 = [  1.9934 1.9946 1.9911 1.9919 1.9940 1.9923 1.9939 1.9934 1.9914 1.9958 ];

gauss_analysis("15 cm - 1", 0.001, t1_1);
gauss_analysis("15 cm - 2", 0.01, t2_1);

# 17.9 cm dal primo coltello
t1_2 = [ 1.9211 1.9207 1.9264 1.9253 1.9113 1.9278 1.9278 1.9277 1.9278 1.9278 ];
t2_2 = [ 1.9843 1.9804 1.9796 1.9841 1.9844 1.9809 1.9845 1.9847 1.9847 1.9847 ];

gauss_analysis("17.9 cm - 1", 0.01, t1_2);
gauss_analysis("17.9 cm - 2", 0.001, t2_2);

# 21 cm dal primo coltello
t1 = [1.9082 1.9063 1.9080 1.9072 1.9080 1.9084 1.9069 1.9079 1.9067 1.9080];
t2 = [1.9729 1.9731 1.9731 1.9719 1.9739 1.9741 1.9740 1.9740 1.9721 1.9749];

gauss_analysis("21 cm - 1", 0.001, t1);
gauss_analysis("21 cm - 2", 0.001, t2);

#####

# 15 cm dal secondo coltello
t1 = [1.9934 1.9932 1.9931 1.9932 1.9932 1.9934 1.9937 1.9941 1.9937 1.9935];
t2 = [1.9946 1.9939 1.9943 1.9941 1.9940 1.9952 1.9954 1.9943 1.9947 1.9941];
gauss_analysis("15 cm dal 2 - 1", 0.001, t1);
gauss_analysis("15 cm dal 2 - 2", 0.001, t2);

# 18.1 cm dal secondo coltello
t1 = [1.9735 1.9744 1.9746 1.9755 1.9765 1.9769 1.9770 1.9760 1.9754 1.9750];
t2 = [1.9802 1.9812 1.9820 1.9818 1.9819 1.9813 1.9816 1.9818 1.9812 1.9810];

gauss_analysis("18.1 cm dal 2 - 1", 0.01, t1);
gauss_analysis("18.1 cm dal 2 - 2", 0.001, t2);

# 12 cm dal primo coltello
t1 = [2.0065 2.0091 2.0049 2.0085 2.0074 2.0096 2.0087 2.0083 2.0111 2.0110];
t2 = [2.0041 2.0043 2.0062 2.0060 2.0052 2.0050 2.0061 2.0046 2.0058 2.0040];

gauss_analysis("12 cm dal 1 - 1", 0.001, t1);
gauss_analysis("12 cm dal 1 - 2", 0.001, t2);


# 7.4 cm dal primo coltello
t1 = [2.1197 2.1125 2.1179 2.1204 2.1189 2.1129 2.1125 2.1131 2.1143 2.1159];
t2 = [2.0279 2.0284 2.0289 2.0289 2.0288 2.0288 2.0288 2.0288 2.0286 2.0286];

gauss_analysis("7.4 cm dal 1 - 1", 0.001, t1);
gauss_analysis("7.4 cm dal 1 - 2", 0.001, t2);


# 
# Caduta libera
# Raccolta del dato: Tempi (ms)
# Distanze \pm 1cm. Possibile che la sferetta parta circa un centimetro sotto la distanza dichiarata
# Sferette d'acciaio cadono su di un bersaglio cronometrato

# 50 cm
tempi = [314 315 314 321 319 316 315 315 315 314 314 315];
gauss_analysis("50 cm", 2, tempi);

# 60 cm
tempi = [347 345 346 347 344 344 348 345 346 344 345 345];
gauss_analysis("60 cm", 2, tempi);

# 90 cm
tempi = [424 424 424 427 423 424 423 428 424 423 422 423];
gauss_analysis("90 cm", 2, tempi);

# 20 cm
tempi = [197 198 197 197 203 203 204 196 199 196 205 198 199 198 197 198 197 198 198];
gauss_analysis("20 cm", 1, tempi);

# 35 cm
tempi = [265 265 265 261 262 263 266 262 269 266 261 263 262 261];
gauss_analysis("35 cm", 1, tempi);


