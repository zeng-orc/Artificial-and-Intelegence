t("Sergey1913").
onto("common_eng.pro").
onto("onto_people.pro").

f("Sergey1789" , "is_a"  , "person").
f("Sergey1789" ,  "has_surname" ,  "Mikhalkov").
f("Vladimir1817" , "is_a"  , "person").
f("Vladimir1817" ,  "has_surname" ,  "Mikhalkov").
f("Alexander1856" , "is_a"  , "person").
f("Alexander1856" ,  "has_surname" ,  "Mikhalkov").
f("Vladimir1886" , "is_a"  , "person").
f("Vladimir1886" ,  "has_surname" ,  "Mikhalkov").

f("Vasily1848" , "is_a"  , "person").
f("Vasily1848"   ,  "has_sex" ,  "male").
f("Vasily1848" , "has_surname"  , "Surikov").
f("Vasily1848" ,  "has_profession" ,  "painter").

f("Vasily1848"        ,  "has_child" , "Piotr1876").
f("Piotr1876"   , "is_a"  , "person").
f("Piotr1876"   ,  "has_sex" ,  "male").
f("Piotr1876"   ,  "has_surname" ,  "Konchalovsky").
f("Piotr1876"    ,  "has_profession" ,  "painter").

f("Piotr1876"          ,  "has_child" , "Natalia1903").
f("Natalia1903"   ,  "has_sex" ,  "female").
f("Natalia1903"   ,  "has_surname" ,  "Konchalovskaya").

f("Sergey1789"      ,  "has_child" , "Vladimir1817").
f("Vladimir1817"     ,  "has_child" , "Alexander1856").
f("Alexander1856"  ,  "has_child" , "Vladimir1886").
f("Vladimir1886"     ,  "has_child" , "Sergey1913").
f("Vladimir1886"     ,  "has_child" , "Mikhail1922").


f("Sergey1913" , "is_a"  , "person").
f("Sergey1913"   ,  "has_sex" ,  "male").
f("Sergey1913" ,  "has_surname" ,  "Mikhalkov").
f("Sergey1913"  ,  "has_profession" ,  "poet").

f("Mikhail1922" , "is_a"  , "person").
f("Mikhail1922"   ,  "has_sex" ,  "male").
f("Mikhail1922" ,  "has_surname" ,  "Mikhalkov").
f("Mikhail1922"  ,  "has_profession" ,  "intelligence_officer").


f("Sergey1913"   ,  "has_spouse" , "Natalia1903").

f("Sergey1913"   ,  "has_spouse" , "Julia1961").
f("Julia1961"       ,  "has_sex" ,  "female").
f("Julia1961"      ,  "has_surname" ,  "Subbotina").
f("Julia1961"      ,  "has_profession" ,  "scientist").

f("Sergey1913"  ,  "has_child" , "Nikita").
f("Natalia1903"  , "has_child"  , "Nikita").
f("Nikita"          , "is_a"  , "person").
f("Nikita"          ,  "has_sex" ,  "male").
f("Nikita"          ,  "has_surname" ,  "Mikhalkov").
f("Nikita"          ,  "has_profession" ,  "film-director").
f("Nikita"          ,  "has_profession" ,  "actor").

f("Natalia1903"  , "has_child"  , "Andrey").
f("Sergey1913"  , "has_child" , "Andrey").
f("Andrey"         , "is_a"  , "person").
f("Andrey"         ,   "has_sex" ,  "male").
f("Andrey"         ,  "has_surname" ,  "Konchalovsky").
f("Andrey"         ,  "has_profession" ,  "film-director").

f("Andrey"        ,  "has_child" , "Egor").
f("Natalia1"       ,  "has_child" , "Egor").
f("Egor"            , "is_a"  , "person").
f("Egor"            ,   "has_sex" ,  "male").
f("Egor"            ,  "has_surname" ,  "Konchalovsky").
f("Egor"            ,  "has_profession" ,  "film-director").

f("Andrey"        ,  "has_spouse" , "Julia").
f("Julia"            ,  "is_a"  , "person").
f("Julia"            ,  "has_sex" ,  "female").
f("Julia"            ,  "has_surname" ,  "Vyssotskaya").
f("Julia"            ,  "has_profession" ,  "actress").

f("Andrey"        ,  "has_child" , "Piotr").
f("Julia"            ,  "has_child" , "Piotr").
f("Piotr"            ,  "is_a"  , "person").
f("Piotr"            ,  "has_sex" ,  "male").
f("Piotr"            ,  "has_surname" ,  "Konchalovsky").

f("Andrey"        ,  "has_child" , "Maria").
f("Julia"            ,  "has_child" , "Maria").
f("Maria"           ,  "is_a"  , "person").
f("Maria"           ,  "has_sex" ,  "female").
f("Maria"           ,  "has_surname" ,  "Konchalovskaya").


f("Andrey"        ,  "is_ex-spouse" , "Irina2").
f("Irina2"          ,  "is_a"  , "person").
f("Irina2"          ,  "has_sex" ,  "female").
f("Irina2"          ,  "has_surname" ,  "Ivanova").
f("Irina2"          ,  "has_profession" ,  "TV-showwoman").

f("Andrey"        ,  "has_child" , "Elena").
f("Irina2"          ,  "has_child" , "Elena").
f("Elena"           ,  "is_a"  , "person").
f("Elena"           ,  "has_sex" ,  "female").
f("Elena"           ,  "has_surname" ,  "Konchalovskaya").

f("Andrey"        ,  "has_child" , "Natalia2").
f("Irina2"          ,  "has_child" , "Natalia2").
f("Natalia2"       ,  "is_a"  , "person").
f("Natalia2"       ,  "has_sex" ,  "female").
f("Natalia2"       ,  "has_surname" ,  "Konchalovskaya").

f("Andrey"        ,  "is_ex-spouse" , "Vivian").
f("Vivian"         ,  "is_a"  , "person").
f("Vivian"         ,  "has_sex" ,  "female").
f("Vivian"         ,  "has_surname" ,  "Gode").
f("Vivian"         ,  "has_profession" ,  "Philologist").

f("Andrey"         ,  "has_child" , "Alexandra").
f("Vivian"          ,  "has_child" , "Alexandra").
f("Alexandra"     ,  "is_a"  , "person").
f("Alexandra"     ,  "has_sex" ,  "female").
f("Alexandra"     ,  "has_surname" ,  "Konchalovskaya").


f("Andrey"      ,  "is_ex-spouse" , "Natalia1").
f("Natalia1"     ,  "is_a"  , "person").
f("Natalia1"     ,  "has_sex" ,  "female").
f("Natalia1"     ,  "has_surname" ,  "Arinbasarova").
f("Natalia1"     ,  "has_profession" ,  "actress").

f("Andrey"    ,  "is_ex-spouse" , "Irina1").
f("Irina1"      ,  "is_a"  , "person").
f("Irina1"     ,  "has_sex" ,  "female").
f("Irina1"     ,  "has_surname" ,  "Brazgovka").
f("Irina1"     ,  "has_profession" ,  "actress").


f("Nikita"        ,  "has_spouse" , "Tatiana").
f("Tatiana"      , "has_sex" ,  "female").
f("Tatiana"      ,  "has_surname" ,  "Mikhalkova").

f("Nikita"          ,  "has_child"  , "Anna").
f("Tatiana"       ,  "has_child"  , "Anna").
f("Anna"          ,  "has_sex" ,  "female").
f("Anna"          ,  "has_surname" ,  "Mikhalkova").
f("Anna"          ,  "has_profession" ,  "actress").

f("Nikita"          ,  "has_child"  , "Artem").
f("Tatiana"        ,  "has_child"  , "Artem").
f("Artem"         , "has_sex" ,  "male").
f("Artem"         ,  "has_surname" ,  "Mikhalkov").

f("Nikita"          ,  "has_child"  , "Stepan").
f("Anastasia"    ,  "has_child"  , "Stepan").
f("Stepan"        , "has_sex" ,  "male").
f("Stepan"        ,  "has_surname" ,  "Mikhalkov").
f("Stepan"        ,  "has_profession" ,  "restorator").

f("Nikita"          ,  "is_ex-spouse" , "Anastasia").
f("Anastasia"    , "has_sex" ,  "female").
f("Anastasia"    ,  "has_surname" ,  "Vertinskaya").
f("Anastasia"    ,  "has_profession" ,  "actress").

f("Nikita"        ,  "has_child"  , "Nadia").
f("Tatiana"      ,  "has_child"  , "Nadia").
f("Nadia"        , "has_sex" ,  "female").
f("Nadia"        ,  "has_surname" ,  "Mikhalkova").
f("Nadia"        ,  "has_profession" ,  "actress").
