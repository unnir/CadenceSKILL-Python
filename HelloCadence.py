#!/usr/bin/python
#shebang line
import sys
import os

data = sys.stdin.readline() #read from SKILL
data = data.replace('','')[:-2] #remove the \n
sys.stdout.write('hello Cadence %s' % data ) # stdout for Cadence Virtuoso 
sys.stdout.flush()	#flus
sys.stdout.close()  # not sure about this line