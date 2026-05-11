import Verso
import VersoManual
import VersoBlueprint
import VersoBlueprint.Commands.Graph
import VersoBlueprint.Commands.Summary
import FactorialPositiveVerso.Chapters.Factorial

open Verso.Genre
open Verso.Genre.Manual
open Informal

#doc (Manual) "Factorial Positivity" =>

This Blueprint formalizes the definition of the factorial function and proves that its result is always strictly greater than zero for any natural number.

{include 0 FactorialPositiveVerso.Chapters.Factorial}

{blueprint_graph}
{blueprint_summary}
