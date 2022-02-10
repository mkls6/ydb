# Generated by devtools/yamaker from nixpkgs 5701e5bc3bfb317e1f37ff3fb889eae7584a1206.

LIBRARY()

OWNER( 
    g:cpp-contrib
    g:yql 
) 

VERSION(1.10.2)

ORIGINAL_SOURCE(https://github.com/apache/avro/archive/release-1.10.2.tar.gz)

LICENSE( 
    Apache-2.0 AND
    BSL-1.0 AND
    FSFAP 
) 

LICENSE_TEXTS(.yandex_meta/licenses.list.txt) 
 
PEERDIR(
    contrib/libs/snappy
    contrib/restricted/boost
    contrib/restricted/boost/libs/iostreams
)

ADDINCL(
    contrib/libs/apache/avro/api
)

NO_COMPILER_WARNINGS()

NO_UTIL()

CFLAGS(
    -DAVRO_SOURCE
    -DSNAPPY_CODEC_AVAILABLE
)

SRCS(
    impl/BinaryDecoder.cc
    impl/BinaryEncoder.cc
    impl/Compiler.cc
    impl/DataFile.cc
    impl/FileStream.cc
    impl/Generic.cc
    impl/GenericDatum.cc
    impl/LogicalType.cc
    impl/Node.cc
    impl/NodeImpl.cc
    impl/Resolver.cc
    impl/ResolverSchema.cc
    impl/Schema.cc
    impl/Stream.cc
    impl/Types.cc
    impl/ValidSchema.cc
    impl/Validator.cc
    impl/Zigzag.cc
    impl/json/JsonDom.cc
    impl/json/JsonIO.cc
    impl/parsing/JsonCodec.cc
    impl/parsing/ResolvingDecoder.cc
    impl/parsing/Symbol.cc
    impl/parsing/ValidatingCodec.cc
)

END()
