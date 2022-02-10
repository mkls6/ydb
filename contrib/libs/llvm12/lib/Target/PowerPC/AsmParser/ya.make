# Generated by devtools/yamaker.

LIBRARY()

OWNER( 
    orivej 
    g:cpp-contrib 
) 

LICENSE(Apache-2.0 WITH LLVM-exception) 
 
LICENSE_TEXTS(.yandex_meta/licenses.list.txt) 
 
PEERDIR(
    contrib/libs/llvm12
    contrib/libs/llvm12/include
    contrib/libs/llvm12/lib/MC
    contrib/libs/llvm12/lib/MC/MCParser
    contrib/libs/llvm12/lib/Support
    contrib/libs/llvm12/lib/Target/PowerPC/MCTargetDesc
    contrib/libs/llvm12/lib/Target/PowerPC/TargetInfo
)

ADDINCL(
    ${ARCADIA_BUILD_ROOT}/contrib/libs/llvm12/lib/Target/PowerPC
    contrib/libs/llvm12/lib/Target/PowerPC
    contrib/libs/llvm12/lib/Target/PowerPC/AsmParser
)

NO_COMPILER_WARNINGS()

NO_UTIL()

SRCS(
    PPCAsmParser.cpp
)

END()
