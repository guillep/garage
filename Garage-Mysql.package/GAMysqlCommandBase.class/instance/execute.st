execute
execute
	| resp cmd |
	session resetSequence.
	cmd := self prepare.
	self send: cmd.
	resp := self readResponse.
	fetchListener ifNotNilDo: #fetchOccurred.
	^ resp