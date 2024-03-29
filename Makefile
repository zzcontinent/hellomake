c_src := $(shell ls *.c)
objs := $(patsubst %.c,%.o,$(c_src))

test: $(objs) FORCE
	gcc -o $@ $(objs)
%.o: %.c 
	gcc -c -o $@ $<

clean: 
	rm -rf *.o

FORCE:

PHONY += FORCE

.PHONY: $(PYONY)
