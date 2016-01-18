rm ptrak
rm wssa 
gfortran -c subs.f
mcstas-2.0 -t Test_Scatter_log.instr &&
gcc -o runme.out Test_Scatter_log.c subs.o -lm -lgfortran --trace &&  ./runme.out -n1000  | tee test.t
