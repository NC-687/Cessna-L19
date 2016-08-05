        ###################################
        #### CYLINDER HEAT TEMPERATURE ####
        ###################################
	var thr = getprop("/engines/engine["~eng_num~"]/prop-thrust");
	var ct = getprop("/engines/engine["~eng_num~"]/cyl-temp");
	var cp = getprop("/controls/engines/engine["~eng_num~"]/cowl-flaps-norm");
	var as = getprop("/velocities/airspeed-kt");
	var egt = (getprop("/engines/engine["~eng_num~"]/egt-degf") - 32) * 0.55;
	var et0 = getprop("/environment/temperature-degc");
	var mp = getprop("/engines/engine["~eng_num~"]/mp-osi");
	var mix = getprop("/controls/engines/engine["~eng_num~"]/mixture");
	var visc = getprop("/engines/engine["~eng_num~"]/oil-visc");
	var cbt = et0 + 0.85 * mp; #carb temperature
	var temp = 3.1 * cbt + 0.225 * rpm + 0.5 * egt - 0.0033 * as * as - 0.08 * thr * (1.28 * cp + 0.1) - 20 * mix; #cyl-head temperature
	interpolate("/engines/engine["~eng_num~"]/cyl-temp", temp * 0.4, 45);
