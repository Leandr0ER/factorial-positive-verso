import Lake
open Lake DSL

require VersoBlueprint from git "https://github.com/leanprover/verso-blueprint"@"v4.30.0"

package «factorial-positive-verso» where
  precompileModules := false
  leanOptions := #[⟨`experimental.module, true⟩]

@[default_target]
lean_lib FactorialPositiveVerso where

lean_exe «blueprint-gen» where
  root := `FactorialPositiveVersoMain
