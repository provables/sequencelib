/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A076852 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A076852, offset := 4, maxIndex := 8, derive := true]
def A076852 (n : ℕ) : ℕ :=
  let x := n - 4
  Int.toNat <| ((((if x ≤ 0 then 1 else 2 + loop (λ (x y) ↦ x * y) x 1) + x) * if x ≤ 0 then 1 else 2) + x) - 2

end Sequence