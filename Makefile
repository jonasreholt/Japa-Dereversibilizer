FILES=src/ web/ app/ bin/ goldFiles/ benchmarks/ tests/ Makefile janus-like.cabal CHANGELOG.md README.md
JAPA_PATH=dist-newstyle/build/x86_64-linux/ghc-8.8.4/janus-like-0.1.0.0/x/japa/build/japa/japa

build:
	cabal build japa && cp $(JAPA_PATH) bin/japa

# This ignores the R^2 value
bench:
	cabal bench 2> /dev/null | grep "time\|mean\|std dev\|variance\|benchmarking"

# Benchmark the execution time of compiler
benchR:
	benchmarks/runbenchmark.sh

test:
	bin/tester.sh

pack:
	mkdir project-src && cp -r $(FILES) project-src && zip -r project-src.zip project-src/ && rm -r project-src

clean:
	rm -rf dist-newstyle bin/japa