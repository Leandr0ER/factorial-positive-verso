import Verso
import VersoManual
import VersoBlueprint
import VersoBlueprint.Commands.Graph
import VersoBlueprint.Commands.Summary
import FactorialPositiveVerso.Chapters.Factorial

open Verso.Genre
open Verso.Genre.Manual
open Informal

#doc (Manual) "Positividad del Factorial" =>

Este Blueprint formaliza la definición de la función factorial y demuestra que su resultado es siempre estrictamente mayor que cero para cualquier número natural.

{include 0 FactorialPositiveVerso.Chapters.Factorial}

{blueprint_graph}
{blueprint_summary}
