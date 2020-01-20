build:
	@jq -c '. | sort_by(.company_name) | .[]' --sort-keys --slurp jp/companies.json > jp/companies.json.tmp
	@mv jp/companies.json.tmp jp/companies.json
	@echo "Build succeeded! I'm waiting for your contribution on GitHub!"
	@echo "https://github.com/ariarijp/list-of-companies-using-redash"