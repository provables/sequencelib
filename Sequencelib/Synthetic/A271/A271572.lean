/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A271572 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A271572, offset := 0, maxIndex := 77, derive := true]
def A271572 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (((x * x) * y) * y) * y) (λ (x _y) ↦ x) 2 (if 2 ≤ 0 then 2 else x) 1 %
  (loop (λ (x _y) ↦ (1 + x) + x) 4 1 + 1)

end Sequence