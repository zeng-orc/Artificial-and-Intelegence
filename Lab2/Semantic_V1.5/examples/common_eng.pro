c("thing").
c("everybody").

p(["ISA", "is_a"]).
p(["is", "is", "are","was", "were"]).
p(["is_in","part_of"]).
p(["AKO", "a_kind_of"]).

p(["has", "has_a", "has_no", "hasnt", "have"]).
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

