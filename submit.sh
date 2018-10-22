module load services/gridscheduler # Load queue command

# See if user gave an email
if [  ! -z  "$2"  ]
then # Gave email as second parameter
	qsub -M $2 -m bea -N $1 $1.jobscript
else # Default email
 	qsub -M alex@afspies.com -m bea -N $1 $1.jobscript
fi

# Add  job info to log
python addLog.py $1

