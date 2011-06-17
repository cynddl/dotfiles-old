 #!/usr/bin/python
import os,random
random.seed()
(_,_,l),_ = os.walk("/home/cynddl/Images")
s = l[random.randint(0,len(l)-1)]
os.system ('feh --bg-scale "/home/cynddl/Images/'+s+'"')
