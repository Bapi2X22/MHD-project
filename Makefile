FC = gfortran 
FFLAGS = -O3 
TARGET = mdrun 

OBJECTS = main.o init.o force.o integrate.o temp.o cell_list.o verlet_list.o

$(TARGET) : $(OBJECTS) 
	$(FC) $(FFLAGS) -o $@ $^  
%.o : %.f90 
	$(FC) $(FFLAGS) -c $< 
	
.PHONY :  clean 

clean : 
	rm -f *.o *.mod 

