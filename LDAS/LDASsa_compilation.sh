
# --------------------------------------------------------------------
# --- COMPILATION ---
# At the very beginning, LDAS has to be compiled once:
# --------------------------------------------------------------------

csh
cd /data/leuven/320/vsc32046/src_code/GEOS5_LDASsa/LDASsa_m3-16_0_p1_KUL/LDASsa/src
source g5_modules
gmake clean ; gmake distclean ; gmake realclean ; gmake install
./g5_modules # gives an error... doesn't matter, but file is hidden! (dotfile)
cp .g5_modules.sh ../Linux/bin/.
exit

