# Create directories
mkdir ~/jobscripts

# Better than Self-destructing
mv "$(cd -P "$(dirname "$0")" ;pwd)" ~/submit 

# Remove git related files
rm -rf ~/submit/.git
rm ~/submit/README.md

# Delete this script
rm ~/submit/setup.sh

# Put template jobscript in the jobscripts folder
mv ~/submit/template.jobscript ~/jobscripts/
