top: run-lang3

run-%:
	gprolog --consult-file $*.pl --query-goal 'main'
