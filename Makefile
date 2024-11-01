# Regras
.PHONY: format test debugg

format:
	blue .
	isort .
test:
	pytest --benchmark-columns=min,median,max --benchmark-timer=time.time --durations=0 -vv
debugg:
	export PYTHONBREAKPOINT=ipdb.set_trace
	python 
