
clauses
t("beat").
pic("mailman.bmp").
onto("common_eng.pro").

f("beat","ERG","mailman").
f("beat","MAL","man").
f("beat","RES","sue").

f("bite","MAL","mailman").
f("bite","ERG","dog").
f("bite","ATT","wolfish").
f("bite","RES","beat").

f("own","ERG","man").
f("own","ACC","dog").

f("sue","ERG","man").
f("sue","ACC","mailman").

f("saw","ERG","neighbor").
f("saw","ACC","beat").
f("saw","RES","call").

f("neighbor","brother","mailman").

f("witness_against","ERG","neighbor").
f("witness_against","ACC","mailman").

f("call","ERG","man").
f("call","ATT","witness_against").
f("call","ACC","neighbor").
f("call","MAL","mailman").

