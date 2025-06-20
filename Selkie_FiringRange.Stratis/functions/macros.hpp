#include "..\imports\cba\script_macros_common.hpp"

#define PREFIX AMY
#define COMPONENT FiringRange

#define AFUNC(var) TRIPLES(ADDON,fnc,var)
#define AVAR(v) DOUBLES(ADDON,v)

#define CFUNC(var) TRIPLES(CBA,fnc,var)

#define ACEFUNC(var) TRIPLES(ace,fnc,var)
#define ACEEFUNC(var1,var2) TRIPLES(DOUBLES(ace,var1),fnc,var2)
#define ACEVAR(var) DOUBLES(ace,var)
#define ACEEVAR(var1,var2) TRIPLES(ace,var1,var2)

#define KFUNC(var) TRIPLES(kat,fnc,var)
#define KEFUNC(var1,var2) TRIPLES(DOUBLES(kat,var1),fnc,var2)

#define KVAR(var) DOUBLES(kat,var)
#define KGVAR(var1) TRIPLES(kat,medical,var1)
#define QKVAR(var) QUOTE(KVAR(var))
#define QKGVAR(var1) QUOTE(KGVAR(var1))

#define ALL_BODY_PARTS ["head", "body", "leftarm", "rightarm", "leftleg", "rightleg"]
#define FACTURE_TYPE ["simple", "compound", "comminuted"]