fmt:
	terraform fmt -recursive

fmt-check:
	terraform fmt -recursive -check

lint-check:
	tflint --recursive \
		--disable-rule terraform_typed_variables \
		--disable-rule terraform_required_providers \
		--disable-rule terraform_required_version

setup-git-hooks:
	rm -rf .git/hooks
	(cd .git && ln -s ../.git-hooks hooks)

