
# --------------------------------------------------------------------
# --- JOB SETUP  ---
# An actual job can be set up as:
# ldsetup <out_path> <exeimp> <batimp>
# - optionally add --submit for directly submitting
# - optionally add --runmodel for running without DA 
#
# Usually outout points to  /scratch/.../TEST_RUNS/
# and config files are from /data/.../TEST_RUNS/ 
#
# File descriptions and additional files accessed:
# - <batimp> : Resource manager... CHANGE EMAIL!! 
# - <exeimp> : configurations... three additional files required:
#    - <ens_prop> : ens_prop_Tb3DDA_j.nml
#    - <ens_updt> :	ensupd_SMOS_7Thv_DA_3h_M.nml
#    - <drivers>  : drv_964x406US_atL_3h_calDnew.nml
#
# Creates a java-script file in the output (/../run) directory:
# - lenkf.0.j 
# --------------------------------------------------------------------

csh 
cd /data/leuven/320/vsc32046/src_code/GEOS5_LDASsa/LDASsa_m3-16_0_p1_KUL/LDASsa/Linux/bin/
source g5_modules
ldsetup setup /scratch/leuven/320/vsc32046/output/TEST_RUNS/ /data/leuven/320/vsc32046/projects/TEST_RUNS/input.exeinp_US_M36_Tb_reg_DA_M /data/leuven/320/vsc32046/projects/TEST_RUNS/input.batinp_US_M36_DA --submit --verbose

# --------------------------------------------------------------------
# NOTES: 
# 	two executables are avaliable (and called from the lenkf.0.j)
# 	LDASsa_assim_mpi.x and LDASsa_mpi.x --> the latter runs (faster)
# 	WITHOUT data assimilation and is called when specifying --runmodel
# 	This is required when generating restart files!!
#
#	~ 0.7 hr / yr for spinup US --> Walltime! 02:00 / 24:00 
# --------------------------------------------------------------------


# --------------------------------------------------------------------
# --- MANUAL JOB EXECUTION  ---
qsub lenkf.0.j
# --------------------------------------------------------------------



















