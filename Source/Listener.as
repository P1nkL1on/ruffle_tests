class Listener {
  static function helloWorld() {
    trace("Hello, world!");
  }
  static function mkListenerHandler(obj: MovieClip) {
    obj.listeners = new Array()
    obj.mkListener = function(listener: Function) {
      obj.listeners.push(listener)
    }
    obj.onEnterFrame = function() {
      for (var i in obj.listeners)
        obj.listeners[i](obj)
    }
  }
  static function spinRight(mc: MovieClip) {
    mc._rotation++
  }
  static function main() {
    mkListenerHandler(_root.b)

    _root.b.mkListener(spinRight)
  }
}
