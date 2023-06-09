c("человек").

d(["человек"     , "person"]).
pr(["имя"           , "name"]).
pr(["фамилия"    , "has_surname"]).
pr(["возраст"     , "has_age"]).
pr(["пол"           , "has_sex"]).
pr(["профессия" , "has_profession"]).

d(["Петр","Piotr"]).
d(["Сергей","Sergey"]).
d(["Наталья","Natalia"]).
d(["Никита","Nikita"]).
d(["Андрей","Andrey"]).
d(["Анастасия","Anastasia"]).
d(["Татьяна","Tatiana"]).
d(["Юлия","Julia"]).
d(["Егор","Egor"]).
d(["Степан","Stepan"]).
d(["Анна","Anna"]).
d(["Надя","Nadia"]).
d(["Артем","Artem"]).

d(["Михалков","Mikhalkov"]).
d(["Кончаловский","Konchalovsky"]).
d(["Высоцкая","Vyssotskaya"]).
d(["Михалкова","Mikhalkova"]).
d(["Кончаловская","Konchalovskaya"]).
d(["Вертинская","Vertinskaya"]).

d(["поэт","poet"]).
d(["актер","actor"]).
d(["актриса","actress"]).
d(["режиссер","film-director"]).
d(["художник","painter"]).
d(["ресторатор","restorator"]).

p(["имеет"       , "has_a", "has"]).

p(["родитель", "is_parent", "is_parent_of"]).
p(["отец"       , "is_father"]).
p(["мать"       , "is_mother"]).
p(["супруг"   , "is_spouse"]).

p(["муж"       , "is_husband"]).
p(["жена"     , "is_wife"]).
p(["дядя"     , "is_uncle"]).
p(["тетя"       , "is_aunt"]).
p(["дед"       ,  "is_grandfather"]).
p(["бабка"    ,  "is_grandmother"]).

p(["И","AND"]).
p(["ПОТОМУ ЧТО","BECAUSE"]).
p(["НЕ","NOT"]).

p(["брат",    "is_brother"]).
p(["сестра", "is_sister"]).
p(["мачеха", "is_step-mother"]).
p(["отчим",   "is_step-father"]).

d(["женский", "female"]).
d(["мужской", "male"]).

g(down,["отец","родитель", "отчим", "мачеха", "is_parent_in_low", "is_grandparent", "is_uncle"]).
g(up, ["сын", "дочь", "пасынок", "падчерица","внук", "внук","внучатный_племянник",  "внучатная_племянница", "племянник", "племянница", "зять", "невестка"]).
g(side,["муж", "жена", "брат", "сестра", "дв_брат", "дв_сестра", "шурин", "деверь", "свояк"]).

r( [t("?x","is_cousin","?y"), t("?x:sex", "is", "male")], 
   [t("?x","дв_брат", "?y")] ).

r( [t("?x","is_cousin","?y"), t("?x:sex", "is", "female")], 
   [t("?x","дв_сестра", "?y")] ).

r( [t("?x","is_father-in-low","?y"), t("?y:sex", "is", "female")], 
   [t("?x","свекор", "?y")] ).
r( [t("?x","is_mother-in-low","?y"), t("?y:sex", "is", "female")], 
   [t("?x","свекровь", "?y")] ). 
     
r( [t("?x","is_father-in-low","?y"), t("?y:sex", "is", "male")], 
   [t("?x","тесть", "?y")] ).
r( [t("?x","is_mother-in-low","?y"), t("?y:sex", "is", "male")], 
   [t("?x","теща", "?y")] ).   
   
r( [t("?x","тесть","?y")],       [t("?y","зять", "?x")] ).
r( [t("?x","теща","?y")],       [t("?y","зять", "?x")] ).
r( [t("?x","свекор","?y")],    [t("?y","невестка", "?x")] ).
r( [t("?x","свекровь","?y")], [t("?y","невестка", "?x")] ).   
   

r( [t("?x","is_wife","?y"), t("?y", "is_brother", "?z")], 
   [t("?z","деверь", "?x")] ).

r( [t("?x","is_husband","?y"), t("?z", "is_brother", "?y")], 
   [t("?z","шурин", "?x")] ).
r( [t("?x","is_husband","?y"), t("?z", "is_sister", "?x")], 
   [t("?y","золовка", "?z")] ).
      
r( [t("?x","is_husband","?y"),  t("?y", "is_sister", "?z"),  t("?a", "is_husband", "?z") ], 
   [t("?x","свояк", "?a")] ).   
r( [t("?x","is_husband","?y"),   t("?x", "is_brother", "?z"),  t("?z", "is_husband", "?a") ], 
   [t("?y","свояченница", "?a")] ).    

%r( [t("?x","is_uncle", "?y")], [t("?y","is_nephew","?x")] ).

/*
r( [t("?x","is_parent","?y")], [t("?x","older","?y")] ).
*/

r( [t("платит","ERG","?x"), t("платит","BEN","?y"), t("платит","ATT","алименты")],
 [t("?x", "отец", "?y")] ).

