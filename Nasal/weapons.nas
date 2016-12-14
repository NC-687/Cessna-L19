# for Rockets

var fire_Rocket = func {

  var state = getprop("/sim/model/show-rocket");
  if ( state == 1 ) {
    setprop("/controls/armament/trigger", 1);
  }
}

var stop_Rocket = func {

  var state = getprop("/sim/model/show-rocket");
  if ( state == 1 ) {
    setprop("/controls/armament/trigger", 0); 
  }
}

var flash_trigger = props.globals.getNode("controls/armament/trigger", 0);
