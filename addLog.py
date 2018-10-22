""" Python script to create a log of batch submission
    By Alex Spies
"""
import datetime as dt
import sys
import os
import pwd
# Create string to be written
logEntry = "------------------------------------------------------\n"

try:
    logEntry += "Job name:    " + sys.argv[1] + "\n"
except IndexError:
    print("Error - Job name not specified")
    exit()
logEntry += "Started by:    " + pwd.getpwuid(os.getuid())[0] + "\n"
logEntry += "Started on:    " + \
            dt.datetime.now().strftime("%d/%m/%y %H:%M") + "\n"


logPath = os.path.expanduser("~") + "/jobs.log"

# Check that log file exists, if not then create it
if not os.path.isfile(logPath):
    with open(logPath, "w") as f:
        f.write("""-- Job Log File --\n
                Generated on """ + dt.datetime.now().strftime("%d/%m/%y") + """
                ******************************************************\n""")

with open(logPath, "a") as f:
    f.write(logEntry)
