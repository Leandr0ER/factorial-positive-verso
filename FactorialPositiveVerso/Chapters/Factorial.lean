import Verso
import VersoManual
import VersoBlueprint

open Verso.Genre
open Verso.Genre.Manual
open Informal

#doc (Manual) "Factorial" =>

:::group "factorial_core"
Basic definition and properties of the factorial function.
:::

:::definition "def:factorial" (parent := "factorial_core")
For any natural number $n$, we define the factorial of $n$, denoted by $n!$, recursively as:
* $0! = 1$
* $(n+1)! = (n+1) * n!$
:::

```lean "def:factorial"
def fac : Nat -> Nat
  | 0 => 1
  | n+1 => (n+1) * fac n
```

:::theorem "thm:fac_pos" (parent := "factorial_core")
For every natural number $n$, the factorial of $n$ is strictly positive:
$n! > 0$.
:::

:::proof "thm:fac_pos"
By induction on $n$.
* *Base case:* $0! = 1 > 0$.
* *Inductive step:* Assume $n! > 0$. Then $(n+1)! = (n+1) * n!$. Since $n+1 > 0$ and $n! > 0$ (by inductive hypothesis), their product is positive.
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

