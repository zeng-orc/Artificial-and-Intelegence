c("person").
%c("everybody").
%c("thing").

% p(["is parent of", "has_child", "parent"]).
pr(["has_surname"]).
pr(["has_name"]).
pr(["name"]).
pr(["age", "old"]).
pr(["sex"]).
pr(["has_sex"]).
pr(["has_profession"]).
pr(["male"]).
pr(["female"]).

pr(["actor", "actress"]).

%o("person", "a_kind_of", "everybody").
%o("everybody", "a_kind_of", "thing").

%o("person", "has_a" , "sex").
%o("person", "has_a" , "name").
%o("person", "has_a" , "age").


g(down,["has_child", "is_step-parent", "has_child-in-low",  "is_father-in-low", "is_mother-in-low","is_grandparent", "is_uncle","is_father","is_mother","is_grandfather", "is_grandmother"]).
g(up, ["is_a", "is_child", "is_son", "is_daughter", "is_grandchild", "is_step-child", "is_grandson", "is_nephew"]).
g(side,["is_cousin", "is_sibling", "is_sister", "is_brother", "is_wife", "is_husband", "has_spouse", "is_ex-spouse" ]).

r( [t("?x","has_child","?y"),t("?x","is_a","person")], 
   [t("?y","is_a","person")] ).
r( [t("?x","has_spouse","?y"),t("?x","is_a","person")], 
   [t("?y","is_a","person")] ).

r( [ t("?x", "has_spouse", "?y"), t("?x:sex", "is", "male") ], 
   [ t("?y:sex", "is", "female") ]). 
   
r( [t("?x","has_spouse","?y")], [t("?y","has_spouse","?x")] ). 

r( [t("?x","has_spouse","?y"),t("?x:sex","is","male")], 
   [t("?x","is_husband","?y")] ).
r( [t("?x","has_spouse","?y"),t("?x","has_sex","male")], 
   [t("?x","is_husband","?y")] ).
   
r( [t("?x","is_husband","?y")], [t("?y","is_wife","?x")] ). 

r( [t("?x","is_sibling","?y")], [t("?y","is_sibling","?x")] ). 
r( [t("?x","has_child","?y"),t("?x:sex","is","male")], 
   [t("?x","is_father","?y")] ).
r( [t("?x","has_child","?y"),t("?x","has_sex","male")], 
   [t("?x","is_father","?y")] ).
      
r( [t("?x","has_child","?y"),t("?x:sex","is","female")], 
   [t("?x","is_mother","?y")] ).
r( [t("?x","has_child","?y"),t("?x","has_sex","female")], 
   [t("?x","is_mother","?y")] ).
   

r( [t("?x","has_child","?y"),t("?x","has_spouse","?z"), n("?z", "has_child", "?y")], 
   [t("?z","is_step-parent","?y")] ).

r( [t("?x","is_step-parent","?y"),t("?x:sex","is","male")], 
   [t("?x","is_step-father","?y")] ).
r( [t("?x","is_step-parent","?y"),t("?x","has_sex","male")], 
   [t("?x","is_step-father","?y")] ).
      
r( [t("?x","is_step-parent","?y"),t("?x:sex","is","female")], 
   [t("?x","is_step-mother","?y")] ).
r( [t("?x","is_step-parent","?y"),t("?x","has_sex","female")], 
   [t("?x","is_step-mother","?y")] ).

%r( [t("?x","has_child","?y")], [t("?y","is_child","?x")] ).
%r( [t("?x","is_uncle","?y")], [t("?y","is_nephew","?x")] ).
%r( [t("?x","is_aunt","?y")], [t("?y","is_nephew","?x")] ).

r( [t("?x","has_child","?y"),t("?y","has_child","?z")], 
   [t("?x","is_grandparent","?z")] ).
r( [t("?x","is_grandparent","?y"),t("?x:sex","is","male")], 
   [t("?x","is_grandfather","?y")] ).   
r( [t("?x","is_grandparent","?y"),t("?x","has_sex","male")], 
   [t("?x","is_grandfather","?y")] ). 
      
r( [t("?x","is_grandparent","?y"),t("?x:sex","is","female")], 
   [t("?x","is_grandmother","?y")] ).   
r( [t("?x","is_grandparent","?y"),t("?x","has_sex","female")], 
   [t("?x","is_grandmother","?y")] ). 
   
r( [t("?x","has_child","?y"),t("?x","has_child","?z"),t("?y","differs","?z")], 
   [t("?y","is_sibling","?z")] ).
   
r( [t("?x","is_sibling","?y"),t("?x:sex","is","male")], 
   [t("?x","is_brother","?y")] ).   
r( [t("?x","is_sibling","?y"),t("?x","has_sex","male")], 
   [t("?x","is_brother","?y")] ). 
      
r( [t("?x","is_sibling","?y"),t("?x:sex","is","female")], 
   [t("?x","is_sister","?y")] ).    
r( [t("?x","is_sibling","?y"),t("?x","has_sex","female")], 
   [t("?x","is_sister","?y")] ). 
      
r( [t("?x","has_child","?y"),t("?x","is_sibling","?z"),t("?z","has_child","?a"),t("?y", "differs","?a")], 
   [t("?y","is_cousin","?a")] ).

r( [t("?x","has_child","?y"),t("?x","is_sibling","?z"), t("?z:sex", "is", "male")], 
   [t("?z","is_uncle", "?y")] ).
r( [t("?x","has_child","?y"),t("?x","is_sibling","?z"), t("?x","has_sex","male")], 
   [t("?z","is_uncle", "?y")] ).
      
r( [t("?x","has_child","?y"),t("?x","is_sibling","?z"), t("?z:sex", "is", "female")], 
   [t("?z","is_aunt", "?y")] ).
r( [t("?x","has_child","?y"),t("?x","is_sibling","?z"), t("?x","has_sex","female")], 
   [t("?z","is_aunt", "?y")] ).

r( [t("?x","has_child","?y"),t("?z","has_spouse","?y")], 
   [t("?x","has_child-in-low","?z")] ).
   
r( [t("?x","has_child-in-low","?y"),t("?x:sex","is","male")], 
   [t("?x","is_father-in-low","?y")] ).  
r( [t("?x","has_child-in-low","?y"),t("?x","has_sex","male")], 
   [t("?x","is_father-in-low","?y")] ). 
         
r( [t("?x","has_child-in-low","?y"),t("?x:sex","is","female")], 
   [t("?x","is_mother-in-low","?y")] ).     
r( [t("?x","has_child-in-low","?y"),t("?x","has_sex","female")], 
   [t("?x","is_mother-in-low","?y")] ).      

r( [t("?x","has_child","?y"),t("?x","has_spouse","?z"), n("?z", "has_child", "?y")], 
   [t("?z","is_step-parent","?y")] ).

/*
r( [t("?x","has_child","?y")], [t("?x","older","?y")] ).
*/

r( [t("?1","is_brother","?2")], [t("?1","is_relative","?2")] ).


r( [t("?2","is_relative","?1"), t("call","ACC","?1"), t("call","ATT","witness_against"), t("call","MAL","?2")],
 [t("can_refuse", "ERG", "?1"), t("can_refuse", "ACC", "witness_against"), t("can_refuse", "ACC", "?2")] ).

r( [t("?1","is_relative","?2"), t("call","ACC","?1"), t("call","ATT","witness_against"), t("call","MAL","?2")],
 [t("can_refuse", "ERG", "?1"), t("can_refuse", "ACC", "witness_against"), t("can_refuse", "ACC", "?2")] ).
