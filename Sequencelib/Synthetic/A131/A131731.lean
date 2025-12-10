/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131731 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A131731, offset := 0, maxIndex := 91, derive := true]
def A131731 (x : ℕ) : ℤ :=
  ((((((loop2 (λ (_x y) ↦ y + y) (λ (x _y) ↦ x) (x - if 1 ≤ 0 then 1 else 0) 1 0 % 3) - 1) +
          loop (λ (x _y) ↦ 1 - x) x 1) *
        2) -
      1) +
    1) -
  x % 2

end Sequence