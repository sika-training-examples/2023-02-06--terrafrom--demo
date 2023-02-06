fmt:
	terraform fmt -recursive

fmt-check:
	terraform fmt -recursive -check

lint-check:
	tflint --recursive

setup-git-hooks:
	rm -rf .git/hooks
	(cd .git && ln -s ../.git-hooks hooks)

