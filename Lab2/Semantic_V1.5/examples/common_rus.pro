c("thing").
c("everybody").

p(["один_из", "is_a", "ISA"]).
p(["значение", "is", "are"]).
p(["был" ,"was"]).
p(["были", "were"]).
p(["часть", "is_in","part_of"]).
p(["вид", "a_kind_of","AKO"]).

p(["имеет", "has", "has_a", "has_no", "hasnt", "have"]).
p(["after", "before"]).
p(["does", "do", "doesnt", "dont", "does not", "do not"]).

g(up, ["ISA", "AKO", "is_a", "a_part_of", "a_kind_of"]).
g(down, ["has_part", "has"]).

%pr(["wet", "dry"]).
%pr(["new", "old"]).
%pr(["low", "high", "normal"]).
%pr(["weak", "strong", "normal"]).
%pr(["mild", "cold", "hot", "warm"]).
%pr(["winter", "summer", "spring","autumn"]).


%r([t("?x", "has_part","?y")],[t("?y","is_part_of","?x")]).

%r([t("?x", "is_a","?y"),t("?y", "has_part","?z")],[t("?x","has_part","?z")]).

j(["of", "the", "a", "an", "one", "to", "at", "in", "on", "your", "perhaps", "maybe"]). 

q(["what", "when", "why", "where", "how"]).

q(["who"]).

