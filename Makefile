top: run-lang2

run-%:
	gprolog --consult-file $*.pl --query-goal 'main'
