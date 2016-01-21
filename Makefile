all: templates

templates:
	ruby build.rb | xargs -L1 ./create.sh

clean:
	rm build/*svg
