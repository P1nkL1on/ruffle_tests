class State {
  static function run() {
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
  }
}
