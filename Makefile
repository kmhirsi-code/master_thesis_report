
name=thesis

BUILD_ARTIFACTS = $(name).aux $(name).bbl $(name).bcf $(name).blg $(name).log $(name).out $(name).run.xml $(name).toc $(name).rubbercache

all: *.tex chapters/*.tex *.bib
	rubber --pdf $(name).tex
	rm -f $(BUILD_ARTIFACTS)

clean:
	rubber --clean --pdf $(name).tex
	rm -f $(BUILD_ARTIFACTS)

