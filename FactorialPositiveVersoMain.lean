import VersoManual
import VersoBlueprint.PreviewManifest
import FactorialPositiveVerso.Blueprint

open Verso Doc
open Verso.Genre Manual

def main (args : List String) : IO UInt32 :=
  Informal.PreviewManifest.manualMainWithSharedPreviewManifest
    (%doc FactorialPositiveVerso.Blueprint)
    args
    (extensionImpls := by exact extension_impls%)
