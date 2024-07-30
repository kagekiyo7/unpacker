################################################################################
#   FPSX/ROFS unpacking program
################################################################################

all: unpacker

install: unpacker
	cp unpacker /usr/local/bin

unpacker: *.cpp *.hpp
	g++ -o $@ *.cpp -static -lstdc++ -lunix++ -lcrypto -lz

.PHONY: all install
