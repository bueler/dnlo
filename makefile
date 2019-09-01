include ${PETSC_DIR}/lib/petsc/conf/variables
include ${PETSC_DIR}/lib/petsc/conf/rules

dnlo: dnlo.o
	-${CLINKER} -o dnlo dnlo.o  ${PETSC_LIB}
	${RM} dnlo.o

# testing

rundnlo_1:
	-@./testit.sh dnlo "-snes_monitor_short -da_refine 1" 1 1

# FIXME  convert these to dnlo tests
runice_1:
	-@./testit.sh ice "-ice_verif -ice_exact_init -da_refine 1 -snes_converged_reason" 1 1

runice_2:
	-@./testit.sh ice "-ice_verif -snes_grid_sequence 1 -snes_converged_reason" 1 2

runice_3:
	-@./testit.sh ice "-ice_verif -da_refine 1 -snes_type vinewtonrsls -snes_converged_reason -ice_check_admissible -ice_exact_init -ice_eps 0.1" 1 3

test_dnlo: rundnlo_1

test: test_dnlo

# etc

.PHONY: distclean rundnlo_1 test test_dnlo

distclean:
	@rm -f *~ dnlo *.dat *.dat.info *.pdf *.pyc *tmp
	@rm -f PetscBinaryIO.py petsc_conf.py
	(cd solns; ${MAKE} distclean)

