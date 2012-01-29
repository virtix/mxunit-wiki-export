import libxml2

doc = libxml2.parseFile("single_e.xml")
ctxt = doc.xpathNewContext()
dom = ctxt.xpathEval("//property[@name='body']")
for node in dom:
	print '------------------------------------'
	print node