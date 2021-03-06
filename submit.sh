module load services/gridscheduler # Load queue command

# See if user gave an email
if [  ! -z  "$2"  ]
then # Gave email as second parameter
	qsub -M $2 -m bea -N $1 $1.jobscript
else # Default email
 	qsub -M alex@afspies.com -m bea -N $1 $1.jobscript
fi

# Store copy of jobscript file
cp $1.jobscript ~/jobscripts

# Add  job info to log
python ~/submit/addLog.py $1

