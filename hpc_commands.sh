
### Useful HPC commands ###

# start an interactive job (-I option)
qsub -A lp_ees_swm_ls_001 -I -l walltime=24:00:00 -l nodes=1:ppn=24

# start an inode for script testing
# inodes 1-4 available, open for 30 minutes
ssh inode<x>

