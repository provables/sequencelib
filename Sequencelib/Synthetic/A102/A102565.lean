/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A102565 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A102565, offset := 0, maxIndex := 100, derive := true]
def A102565 (x : ℕ) : ℤ :=
  ((((loop2 (λ (x y) ↦ x + y) (λ (_x y) ↦ y / 2) x 0 x % 2) * 2) - 1) - x % 2) + if x ≤ 0 then 1 else 0

end Sequence