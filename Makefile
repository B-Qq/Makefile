#OBJECT=test.o add.o
#test:$(OBJECT)
#	g++ $(OBJECT) -o test
#add.o:add.cpp add.h
#	g++ -c add.cpp -o add.o
#test.o:test.cpp add.h
#	g++ -c test.cpp -o test.o
#clean:
#	rm *.o -rf 
#	rm test
#

#OBJECT=test.o add.o
#
#test:$(OBJECT)
#	g++ $(OBJECT) -o test
#add.o:add.h
#test.o:add.h
#.PHONY:cleanall cleanobject cleantarget
#
#cleanall:cleanobject cleantarget
#cleanobject:
#	-rm *.o -rf 
#cleantarget:
#	-rm test -rf
#

OBJECT=test.o add.o

test:$(OBJECT)
	g++ $(OBJECT) -o test
$(OBJECT):%.o:%.cpp
	g++ -c $< -o $@
