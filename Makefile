BUILDDIR = build
INPUTFILE = questions

all: svg

svg: templates
	ls -d -1 $(shell pwd)/$(BUILDDIR)/*.svg | xargs -L1 -I_file -- sh -c 'inkscape _file --export-plain-svg=_file --export-text-to-path'

templates:
	ruby build.rb $(INPUTFILE) | xargs -L1 ./create.sh

clean:
	$(RM) $(BUILDDIR)/*svg
