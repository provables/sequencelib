/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A298468 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A298468, offset := 0, maxIndex := 100, derive := true]
def A298468 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (x _y) ↦ loop (λ (x y) ↦ if x ≤ 0 then y else 0) x 2 / 2) (x + x) x + 1) + x) + x) + x / 2

end Sequence