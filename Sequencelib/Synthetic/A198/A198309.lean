/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A198309 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A198309, offset := 3, maxIndex := 100, derive := true]
def A198309 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| loop2 (λ (_x y) ↦ ((2 * 4) * y) + 2) (λ (x _y) ↦ x) (x + 1) 2 1

end Sequence