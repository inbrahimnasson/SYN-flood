CC		 = g++
CFLAGS	 = -Wall -g -std=c++0x
LDFLAGS	 =
INCLUDES = -I${BOOST_DIR}/include/
LIBS	 = -L${BOOST_DIR}/lib -lboost_system -pedantic -pthread -lboost_thread
TARGET	 = syn-flood
SRC_DIR	 = src
OBJS	 = ${SRC_DIR}/main.o

all:	$(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $(OBJS) $(LIBS)

clean:
	-rm -f $(TARGET) $(OBJS) *~ \#*

.cpp.o:
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@
