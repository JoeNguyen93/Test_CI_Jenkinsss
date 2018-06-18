
PR_NUMBER := $(word 2, $(MAKECMDGOALS))
ACCESS_TOKEN := $(word 3, $(MAKECMDGOALS))
# turn remaining args after "keke" to do-nothing targets
RUN_ARGS := $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))
$(eval $(RUN_ARGS):;@:)


keke:
	echo "Test keke...."
	echo "CMD GOALS: $(MAKECMDGOALS)"
	echo "PR_NUMBER: $(PR_NUMBER)"
	echo "ACCESS_TOKEN: $(ACCESS_TOKEN)"
	npm install
	node hehe.js $(PR_NUMBER) $(ACCESS_TOKEN)