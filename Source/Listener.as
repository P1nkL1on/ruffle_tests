class Listener {
  static function mkListenerHandler(obj: MovieClip, types: Array) {
    Utils.debug(arguments)
    /* Utils.debug("Listener::mkListenerHandler", "obj = " + obj._name + "; types = " + types) */
    obj.mkListener = function(type: String, listener: Function) {
      Utils.assertDefined(obj, type + "Listeners")
      obj[type + "Listeners"].push(listener)
    }

    for (var i in types) {
      var type = types[i]
      obj[type + "Listeners"] = new Array()
      obj[type] = function() {
        for (var j in obj[type + "Listeners"])
          obj[type + "Listeners"][j](obj)
      }
    }
  }
  static function spinRight(mc: MovieClip) {
    mc._rotation++
  }
  static function main() {
    Utils.debug(arguments)
    mkListenerHandler(_root.b, new Array("onEnterFrame"))

    _root.b.mkListener("onEnterFrame", spinRight)
  }
}
