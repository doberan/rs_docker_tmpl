
.PHONY: run;
run:
	docker build -t rust-env .
	docker run -itv `pwd`/src:/projects rust-env
