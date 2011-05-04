# 2011 - Laboratorio di fisica
# Maria Cristina Fortuna
# Marco Giglio
# Riccardo Iaconelli

# 15 cm
t1_1 = [ 1.9816 1.9794 1.9821 1.9805 1.9802 1.9804 1.9810 1.9809 1.9796 ];
t2_1 = [  1.9934 1.9946 1.9911 1.9919 1.9940 1.9923 1.9939 1.9934 1.9914 1.9958 ];

gauss_analysis("15 cm - 1", 0.001, t1_1)
gauss_analysis("15 cm - 2", 0.01, t2_1)

# 17.9 cm
t1_2 = [ 1.9211 1.9207 1.9264 1.9253 1.9113 1.9278 1.9278 1.9277 1.9278 1.9278 ];
t2_2 = [ 1.9843 1.9804 1.9796 1.9841 1.9844 1.9809 1.9845 1.9847 1.9847 1.9847 ];

gauss_analysis("17.9 cm - 1", 0.01, t1_2)
gauss_analysis("17.9 cm - 2", 0.001, t2_2)

# 21 cm
t1 = [1.9082 1.9063 2.9080 2.9072 1.9080 1.9084 1.9069 1.9079 1.9067 1.9080];
t2 = [1.9729 1.9731 1.9731 1.9719 1.9739 1.9741 1.9740 1.9740 1.9721 1.9749];

gauss_analysis("21 cm - 1", 0.001, t1)
gauss_analysis("21 cm - 2", 0.001, t2)
