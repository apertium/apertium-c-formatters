install_dir=/usr/local

binaries=desman desmnemo reman remnemo
shells=apertium-man apertium-mnemo


all:	$(binaries)


install: $(binaries) $(shells)
	cp -p  $(binaries) $(shells) $(install_dir)/bin
	find man | fgrep -v .svn | cpio -pdmv $(install_dir)/share


desman:	desman.c
	cc -o desman desman.c

desmnemo: desmnemo.c
	cc -o desmnemo desmnemo.c

reman:	reman.c
	cc -o reman reman.c

remnemo: remnemo.c
	cc -o remnemo remnemo.c
