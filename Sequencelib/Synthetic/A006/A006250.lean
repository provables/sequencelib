/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A006250 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A006250, offset := 1, maxIndex := 8, derive := true]
def A006250 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((((((((loop (λ (x _y) ↦ x + x) x 1 - loop2 (λ (_x y) ↦ y + y) (λ (x _y) ↦ x) x 1 0) / 2) + 1) / 2) / 2) + 1) *
                  loop (λ (x _y) ↦ x + x) x 1) /
                2) +
              1) /
            2) /
          2) +
        2) /
      2) /
    2) +
  1

end Sequence