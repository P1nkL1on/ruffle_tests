var paramsPath = fl.configURI + "Commands/ExportParams.txt"
var paramsStr = FLfile.read(paramsPath)
var params = paramsStr.split('\\').join('/').split(' ')
var flaAbsPath = "file:///" + params[0]
fl.trace('.fla project = ' + flaAbsPath)

var swfAbsPath = "file:///" + params[1]
fl.trace('.swf target = ' + swfAbsPath)

var flaDoc = fl.openDocument(flaAbsPath)
flaDoc.exportSWF(swfAbsPath, true)
// fl.quit(false)
