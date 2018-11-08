#Make

tiempo.txt: cuenta.x
	./cuenta.x Pi_2500000.txt cuenta.txt tiempo.txt

cuenta.x: cuenta.cpp
	g++ cuenta.cpp -o cuenta.x
