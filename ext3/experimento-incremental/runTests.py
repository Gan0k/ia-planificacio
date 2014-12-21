import os 

for i in range(1,21):
    print("~/Metric-FF/ff -o ../travel.pddl -f tests/test "+`i` + ".pddl -O > traces/trace"+`i`+".out")
    os.system("~/Metric-FF/ff -o ../travel.pddl -f tests/test"+`i` + ".pddl -O > traces/trace"+`i`+".out")