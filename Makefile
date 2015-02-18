#CXX:=clang++-3.5
CXX=g++
CXXFLAGS:=-std=c++11 -g -O0
LIBS:=-I/usr/include/ -I/home/alendit/hyper/Boost.NumPy `python2.7-config --cflags`
LDLIBS:=`python2.7-config --ldflags` -L/usr/lib/ -lboost_python -LBoost.NumPy/build/lib -lboost_numpy

clean: 
	rm *.so *.o

shared.o: shared.cpp
	$(CXX) $(CXXFLAGS) $(LIBS) -c -fPIC $< -o $@

libshared.so: shared.o
	$(CXX) $(CXXFLAGS) -shared $< -o $@ $(LDLIBS)


test.o: test.cpp
	$(CXX) $(CXXFLAGS) $(LIBS) -c $< -o $@

test: test.o libshared.so
	$(CXX) $(CXXFLAGS) -L. $< -o $@ $(LDLIBS) -lshared
