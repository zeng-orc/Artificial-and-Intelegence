e("Laura_Smith","LauraSmith.pro").
t("Larry_Smith").
hypo("anaemia").
onto("onto_patient.pro").
onto("onto_people.pro").
onto("common_eng.pro").

f("Larry_Smith:name", "is", "Larry Eugene Smith").
f("Larry_Smith", "is_a", "patient").
f("Larry_Smith","has_spouse", "Laura_Smith").

f("Larry_Smith:sex", "is", "male").
f("Larry_Smith:marital_status", "is", "married").

f("Larry_Smith:age", "is", "59").
f("Larry_Smith", "has_a", "sickness").
f("Larry_Smith:pulse", "is", "weak").
f("Larry_Smith:pulse", "is", "rapid").
f("Larry_Smith:blood_pressure", "is", "low").
f("Larry_Smith:diagnose", "is", "anaemia").
f("Larry_Smith:blood_pressure", "after", "sleep").
f("Larry_Smith:sleep", "is", "worrisome").
f("Larry_Smith:breathe", "is", "perfunctory").
f("Larry_Smith:skin", "is", "pale").
f("Larry_Smith:skin", "is", "wet").
f("Larry_Smith:temperature", "is", "normal").
