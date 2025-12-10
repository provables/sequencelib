/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A198320 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A198320, offset := 1, maxIndex := 4, derive := true]
def A198320 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop2 (λ (x y) ↦ ((if x ≤ 0 then x else 2 + 2) * (x + x)) + y) (λ (x _y) ↦ x) x 2 1 * 2) - 2) + 1) - x % 2

end Sequence