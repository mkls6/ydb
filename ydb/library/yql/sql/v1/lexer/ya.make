LIBRARY() 
 
OWNER( 
    g:yql
    g:yql_ydb_core
) 
 
PEERDIR( 
    ydb/library/yql/core/issue/protos
    ydb/library/yql/parser/proto_ast
    ydb/library/yql/parser/proto_ast/gen/v1
    ydb/library/yql/parser/proto_ast/gen/v1_ansi
    ydb/library/yql/parser/proto_ast/gen/v1_proto
) 
 
SRCS( 
    lexer.cpp 
) 
 
END() 
