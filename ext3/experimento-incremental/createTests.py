import os

for i in range(1,30):
    ncs = i
    os.system("./generador " + `ncs` + " 1 1 " + `ncs` + " 100 10000 20 1 test" + `i` + " > tests/test" + `i` + ".pddl");
    
