# Generated by devtools/yamaker from nixpkgs 92c884dfd7140a6c3e6c717cf8990f7a78524331.

LIBRARY()

OWNER(g:cpp-contrib)

VERSION(1.1.8)

ORIGINAL_SOURCE(https://github.com/google/snappy/archive/1.1.8.tar.gz)

LICENSE(BSD-3-Clause)

LICENSE_TEXTS(.yandex_meta/licenses.list.txt) 

ADDINCL(
    GLOBAL contrib/libs/snappy/include
)
 
NO_COMPILER_WARNINGS()

CFLAGS(
    -DHAVE_CONFIG_H
)

SRCS(
    snappy-c.cc
    snappy-sinksource.cc
    snappy-stubs-internal.cc
    snappy.cc
)

END()
