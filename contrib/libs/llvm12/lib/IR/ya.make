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
    contrib/libs/llvm12/lib/BinaryFormat
    contrib/libs/llvm12/lib/Remarks
    contrib/libs/llvm12/lib/Support
)

ADDINCL( 
    contrib/libs/llvm12/lib/IR 
) 

NO_COMPILER_WARNINGS()

NO_UTIL()

SRCS(
    AbstractCallSite.cpp
    AsmWriter.cpp
    Assumptions.cpp
    Attributes.cpp
    AutoUpgrade.cpp
    BasicBlock.cpp
    Comdat.cpp
    ConstantFold.cpp
    ConstantRange.cpp
    Constants.cpp
    Core.cpp
    DIBuilder.cpp
    DataLayout.cpp
    DebugInfo.cpp
    DebugInfoMetadata.cpp
    DebugLoc.cpp
    DiagnosticHandler.cpp
    DiagnosticInfo.cpp
    DiagnosticPrinter.cpp
    Dominators.cpp
    FPEnv.cpp
    Function.cpp
    GVMaterializer.cpp
    Globals.cpp
    IRBuilder.cpp
    IRPrintingPasses.cpp
    InlineAsm.cpp
    Instruction.cpp
    Instructions.cpp
    IntrinsicInst.cpp
    LLVMContext.cpp
    LLVMContextImpl.cpp
    LLVMRemarkStreamer.cpp
    LegacyPassManager.cpp
    MDBuilder.cpp
    Mangler.cpp
    Metadata.cpp
    Module.cpp
    ModuleSummaryIndex.cpp
    Operator.cpp
    OptBisect.cpp
    Pass.cpp
    PassInstrumentation.cpp
    PassManager.cpp
    PassRegistry.cpp
    PassTimingInfo.cpp
    PrintPasses.cpp
    ProfileSummary.cpp
    PseudoProbe.cpp
    ReplaceConstant.cpp
    SafepointIRVerifier.cpp
    Statepoint.cpp
    StructuralHash.cpp
    Type.cpp
    TypeFinder.cpp
    Use.cpp
    User.cpp
    Value.cpp
    ValueSymbolTable.cpp
    Verifier.cpp
)

END()
