/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A174028 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A174028, offset := 0, maxIndex := 54, derive := true]
def A174028 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (x y) ↦ (x - 1) - if x ≤ 0 then 0 else y) x x + x) * 2) * 2) + 2

end Sequence