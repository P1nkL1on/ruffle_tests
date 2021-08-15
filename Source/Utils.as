class Utils {
  static function assert(bool: Boolean) {
    if (bool)
      return
    error("Assert failed in " + nameOf(arguments.caller) + "!")
  }
  static function assertDefined(obj: Object, member: String) {
    if (eval(String(obj) + "." + member) != undefined)
      return
    error("Assert failed in " + nameOf(arguments.caller) + " " + member + "is not member of " + obj._name + "!")
  }
  static function valueOr(maybeValue, defaultValue) {
    return maybeValue == undefined ? defaultValue : maybeValue
  }
  static function debug(args: Object, msg) {
    trace(nameOf(args.callee) + ": " + args + " " + valueOr(msg, ""))
  }
  static function warning(msg: String) {
    trace("ERROR: " + msg)
  }
  static function error(msg: String) {
    trace("ERROR: " + msg)
  }
  static var functionNameContexts = new Array(
    Listener, Utils)
  static function nameOf(func:Function): String {
    for (var i in functionNameContexts) {
      var obj: Function = functionNameContexts[i]
      for (var prop in obj) {
        if (functionNameContexts[i][prop] == func)
          return prop;
      }
    }
    return "anonymous function";
  }
  /* static function run() {
    _root.createEmptyMovieClip("target_mc", _root.getNextHighestDepth());
    loadVariables("params.txt", _root.target_mc);
    function checkParamsLoaded() {
      if (_root.target_mc.done == undefined) {
        trace("not yet.");
      } else {
        trace("finished loading. killing interval.");
        trace("-------------");
        for (var i in _root.target_mc) {
          trace(i+": "+_root.target_mc[i]);
        }
        trace("-------------");
        clearInterval(param_interval);
      }
    }
    var param_interval: Number = setInterval(checkParamsLoaded, 100);
  } */
}
