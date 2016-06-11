INSTALL_DIR=/usr/include

CFLAGS = -I ~/boost_1_61_0 -Wall -O0 -g -fpic -fopenmp -std=c++11 
CXXFLAGS = $(CFLAGS)
LDFLAGS =
CXX      = g++

SUBDIRS = test

.PHONY: subdirs $(SUBDIRS)

subdirs: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@

install:
	cp -r ./tslib $(INSTALL_DIR)
