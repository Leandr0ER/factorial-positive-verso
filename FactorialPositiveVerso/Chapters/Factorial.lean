import Verso
import VersoManual
import VersoBlueprint

open Verso.Genre
open Verso.Genre.Manual
open Informal

#doc (Manual) "Factorial" =>

:::group "factorial_core"
Definición y propiedades básicas de la función factorial.
:::

:::definition "def:factorial" (parent := "factorial_core")
Para cualquier número natural $`n`, definimos el factorial de $`n`, denotado por $`n!`, recursivamente como:
* $`0! = 1`
* $`(n+1)! = (n+1) * n!`
:::

```lean "def:factorial"
def fac : Nat -> Nat
  | 0 => 1
  | n+1 => (n+1) * fac n
```

:::theorem "thm:fac_pos" (parent := "factorial_core")
Para todo número natural $`n`, el factorial de $`n` es estrictamente positivo:
$`n! > 0`.
:::

:::proof "thm:fac_pos"
Por inducción sobre $`n`.
* *Caso base:* $`0! = 1 > 0`.
* *Paso inductivo:* Supongamos $`n! > 0`. Entonces $`(n+1)! = (n+1) * n!`. Como $`n+1 > 0` y $`n! > 0` (por hipótesis de inducción), su producto es positivo.
:::

```lean "thm:fac_pos"
theorem fac_pos (n: Nat) : 0 < fac n := by
  induction n with
  | zero =>
    simp [fac]
  | succ n ih =>
    unfold fac
    exact Nat.mul_pos (Nat.succ_pos n) ih
```
