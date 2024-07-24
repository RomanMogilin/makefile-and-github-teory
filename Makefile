ifeq ($(OS), Windows_NT)
run:
	python package/main.py

install: requirements.txt
	pip install -r requirements.txt

build: setup.py
	python setup.py build bdist_wheel

clean:
	if exist "./build" rd /s /q build
	if exist "./dist" rd /s /q dist
	if exist "./makefile_project.egg-info" rd /s /q makefile_project.egg-info
else
FILES=a b
run:
	python3 package/main.py

install: requirements.txt
	pip3 install -r requirements.txt

build: setup.py
	python3 setup.py build bdist_wheel

clean: build dist makefile_project.egg-info
	rm -r build
	rm -r dist
	rm -r makefile_project.egg-info
%: text1.txt
	echo "$^" > $@.txt
foreach_test:
	echo "$(foreach D,$(FILES),text$(D))" > foreach.txt
wildcart_test:
	$(info $(wildcard *.txt))
dollar_left: %.txt
	$(info $<)
endif