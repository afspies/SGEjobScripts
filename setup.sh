# Create directories
#mkdir ~/jobscripts
#mkdir ~/submit
#mv ./addLog.py ~/submit/
#mv ./submit.sh ~/submit/

# Self-destruct
# Based on stackexchange Q 361318 answer by O.Dulac
rm -rf "{$(cd -P "$(dirname "$0")" ;pwd):-/tmp.__UNDEFINED__}"
