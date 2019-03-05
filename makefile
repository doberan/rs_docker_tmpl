
.PHONY: run;
run:
	docker build -t rust-env .
	docker run -itv /Users/user/Desktop/masa_work/etc/src:/projects rust-env
