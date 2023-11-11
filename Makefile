update:
	rm -rf node_modules package-lock.json
	nrm use local
	npm i

local:
	npm run build
	nrm use local
	npm unpublish @kaoscript/ast --force
	npm publish
