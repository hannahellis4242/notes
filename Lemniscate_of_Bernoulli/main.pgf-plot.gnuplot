set table "main.pgf-plot.table"; set format "%.5f"
set samples 100.0; set parametric; plot [t=0.0:6.283185307179586] [] [] sqrt(2.0)*sqrt(cos((2.0*t)))*cos((t)),sqrt(2.0)*sqrt(cos((2.0*t)))*sin((t))
