clauses

pr(["has_sex"]).
pr(["has_name"]).
pr(["marital_status"]).
pr(["likes"]).
%r([t("?z","has_student","?x")],[t("?x", "in_group", "?z")]).

% r([t("?z","has_student","?x"),t("?z","has_student","?y"),t("?x","differs","?y")],[t("?x", "mate", "?y")]).

% r([t("?x","in_group","?z"),t("?y","in_group","?z"),t("?x","differs","?y")],[t("?x", "mate", "?y")])

r([   t("?x","likes","?z"),   t("?y", "likes", "?z") , t("?x","differs","?y")],
   [  t("?x", "likes", "?y"), t("?y", "likes", "?x") ]).

r([t("?x","has_sex","male"),    n("?x","marital_status","married"), t("?x","prefer","?z"),
    t("?y","has_sex","female"), n("?y","marital_status","married"), t("?y","prefer","?z")],
   [t("?x", "may_marry", "?y")]).

r([t("?x", "may_marry", "?y")], [t("?y", "may_marry", "?x")]).


r([t("?x","has_sex","?s"),  t("?x","likes","?y"),
    t("?y","has_sex","?s"),  t("?y","likes","?x"), t("?x","differs","?y")],
   [t("?x", "friend", "?y")]).

r([t("?x", "friend", "?y")], [t("?y", "friend", "?x")]).

r([   t("?x","likes","reading") ],
   [  t("?x", "prefer", "sitting_home") ]).

r([   t("?x","likes","computers") ],
   [  t("?x", "prefer", "sitting_home") ]).

r([   t("?x","likes","Java") ],
   [  t("?x", "prefer", "sitting_home") ]).   

r([   t("?x","likes","bykes") ],
   [  t("?x", "prefer", "travellling") ]).   
   
r([   t("?x","likes","tourism") ],
   [  t("?x", "prefer", "travellling") ]). 
   
r([   t("?x","likes","painting") ],
   [  t("?x", "prefer", "travellling") ]).  
   
r([   t("?x","likes","photo") ],
   [  t("?x", "prefer", "travellling") ]).      
   
r([t("?x","has_sex","male"),  t("?x","may_marry","?y"),
    t("?z","has_sex","male"),  t("?z","may_marry","?y"), t("?x","differs","?z")],
   [t("?x", "rival", "?z"), t("?z", "rival", "?x") ]).
r([t("?x","has_sex","female"),  t("?x","may_marry","?y"),
    t("?z","has_sex","female"),  t("?z","may_marry","?y"), t("?x","differs","?z")],
   [t("?x", "competitress", "?z"), t("?z", "competitress", "?x") ]).   

% студент является лидером группы, если все члены группы его уважают
   
r( [t("?z","has_student","?x"), t("?z","has_student","?y"), t("?x","differs","?y"),n("?x","respects","?y")], [t("?x", "doesnot_respect","?y")]).   
r( [t("?z","has_student","?y"),n("?x", "doesnot_respect", "?y")], [t("?y", "is_a","leader") ]).   
   

   
   
      