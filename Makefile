test: compile
	@echo
	@echo '*** Running tests ***'
	@echo
	0launch hello-ceylon-any-any/0install/hello-ceylon.xml
	0launch hello-ceylon-any-any/0install/hello-ceylon.xml Bob

compile:
	0launch http://0install.net/2006/interfaces/0compile.xml build
