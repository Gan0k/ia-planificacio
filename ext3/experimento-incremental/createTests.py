import os

for i in range(1,6):
    ncs = i*5
    os.system("./generador " + `ncs` + " 1 1 " + `(ncs/2)` + " 100 10000 10 1 test" + `i` + " > tests/test" + `i` + ".pddl");
