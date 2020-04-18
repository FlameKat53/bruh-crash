CXX = g++
CFLAGS = 
OBJECTS = bruh.o
TARGET_NAME = bruh

	TARGET = $(TARGET_NAME).exe
	LFLAGS += -static -static-libgcc

all: $(TARGET)

%.o: %.cpp
	$(CXX) $(CFLAGS) -c $< -o $@

$(TARGET): $(OBJECTS)
	$(CXX) $(CFLAGS) $^ -o $@ $(LFLAGS)

clean:
	rm -f $(OBJECTS) $(TARGET)
