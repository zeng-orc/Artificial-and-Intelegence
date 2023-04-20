t("my_car").
pic("car.bmp").
onto("onto.pro").
onto("onto_car.pro").
onto("common_eng.pro").
e("my_car:engine", "car_engine.pro").
e("my_car:transmission","car_transmission.pro").

f("my_car", "is_a", "car").
f("my_car", "has_a", "my_car:problem").

f("my_car:body", "is", "sedan").
f("my_car:brand",  "is", "Toyota").
f("my_car:model",   "is", "Camry").
f("my_car:year",   "is", "2007").
f("my_car:engine", "is", "gasoline").
f("my_car:transmission", "is", "automatic").
f("my_car:suspension", "is", "ok").

f("my_car:problem", "is", "engine").
f("weather", "is", "mild").
f("weather", "is", "dry").
f("my_car:engine", "doesnt", "start").
f("my_car:battery", "is", "charged").
f("my_car:fuel_tank", "isnt", "empty").
f("my_car:starter", "does", "rotate").
f("my_car:starter", "drives", "crankshaft").
f("my_car:exhaust_pipe", "is", "sealed").
f("seal", "is", "soil").
f("my_car:spark_plugs", "are", "new").
f("my_car:check_engine", "doesnt", "light").


