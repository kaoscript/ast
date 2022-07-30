local:
	npm run build
	nrm use local
	npm unpublish @kaoscript/ast --force
	npm publish
