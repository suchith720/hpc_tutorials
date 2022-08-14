#!/bin/sh
#Set the job name (for your reference)
#PBS -N xc
### Set the project name, your department code by default
#PBS -P xml.std
### Request email when job begins and ends
#PBS -m bea
### Specify email address to use for notification.
#PBS -M $USER@iitd.ac.in
### chunk specific resources ###(select=5:ncpus=4:mpiprocs=4:ngpus=2:mem=2GB::centos=skylake etc.)
#PBS -l select=1:ncpus=12:ngpus=0:centos=haswell
### Specify "wallclock time" required for this job, hhh:mm:ss
#PBS -l walltime=48:00:00
#PBS -l software=python

#PBS -o /home/scai/phd/aiz218323/pbs.output
#PBS -e /home/scai/phd/aiz218323/pbs.error

## Keep single # before PBS to consider it as command ,
## more than one # before PBS considered as comment.
## any command/statement other than PBS starting with # is considered as comment.
## Please comment/uncomment the portion as per your requirement before submitting job



#Environment Setup
echo "==============================="
echo $PBS_JOBID
cd "$PBS_O_WORKDIR"
sleep 7d
