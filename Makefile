cmd = bundle exec

all : output.pdf academic.pdf

output.pdf : style.txt data.yaml
	$(cmd) ruby make_cv.rb -i data.yaml -s style.txt -o $@

academic.pdf : academic.txt data.yaml
	$(cmd) ruby make_cv.rb -i data.yaml -s academic.txt -o $@

.PHONY : clean
clean :
	rm -f output.pdf academic.pdf

.PHONY : copy2win
copy2win :
	cp *.pdf $$WIN_HOME/OneDrive/Documents/job_change/
