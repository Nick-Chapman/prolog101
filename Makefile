top: run-lang1

run-%:
	gprolog --consult-file $*.pl --query-goal 'main'
