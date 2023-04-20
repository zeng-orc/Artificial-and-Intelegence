c("patient").

pr(["diagnose", "diagnosis"]).
pr(["dizziness", "dizzi"]).
pr(["anaemia", "anemia"]).
pr(["pulse","pace", "heartbeating"]).
pr(["diagnose", "diagnosis"]).
pr(["rapid", "qiuck", "fast", "slow"]).
pr(["head"]).
pr(["blood_pressure"]).
pr(["temperature"]).
pr(["sickness"]).
pr(["breathe"]).
pr(["skin"]).
pr(["sleep"]).


d(["patient", "you", "Sie"]).

d(["has", "have","had", "haben", "hat"]).
d(["is", "was", "are", "were", "ist"]).

r( [t("?x:sex", "is", "male"), t("?x:marital_status", "is", "married")], [t("?x", "has_a", "wife")]).
r([t("?x:blood_pressure", "is", "low")], [t("?x","is", "hypotonic")] ).

o("patient", "has_a", "diagnose"). 
o("patient", "a_kind_of", "person"). 
o("person", "has_a" , "blood_pressure").
o("person", "has_a" , "temperature").
o("person", "has_a" , "pulse").
o("person", "has_a" , "breathe").
o("person", "has_a" , "skin").
