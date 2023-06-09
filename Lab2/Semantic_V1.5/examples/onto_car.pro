
pr(["full", "empty"]).
pr(["charged", "discharged", "full", "empty", "ok"]).

pr(["seal","sealed", "seal", "locked", "blocked", "free"]).

r( [t("transmission", "is", "automatic")], [t("car", "has_no", "clutch")]).

c("car").
c("engine").
c("body").
c("transmission").
c("ignition").
c("suspension").
c("brake").
c("battery").

o("car", "has_part", "body").
o("car", "has_part", "engine").
o("car", "has_part", "suspension").
o("car", "has_part", "transmission").
o("car", "has_part", "brake").
o("car", "has_part", "battery").


o("engine", "has_part", "starter").
o("engine", "has_part", "alternator").
o("engine", "has_part", "crankshaft").
o("engine", "has_part", "cylinder").
o("engine", "has_part", "camshaft").
o("engine", "has_part", "ignition").

o("car", "has_part", "fuel_tank").
o("car", "has_part", "exhaust_pipe").
o("car", "has_a", "check_engine").
o("car", "attribute", "year").
o("car", "attribute", "brand").
o("brand", "has_a", "model").

%o("hybrid", "has_part", "electromotor").
%o("diesel", "has_part", "fuel_pump").

o("engine", "has_a", "type").

o("ignition", "has_part", "wires").
o("ignition", "has_part", "spark_plugs").