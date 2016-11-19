processing - private
stopServer

	ZnServer stopDefault.
	ZnZincServerAdaptor allInstancesDo: [ :each | each stop ]