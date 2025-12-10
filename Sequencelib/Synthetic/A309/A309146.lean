/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A309146 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A309146, offset := 0, maxIndex := 3, derive := true]
def A309146 (x : ℕ) : ℕ :=
  Int.toNat <| (((((((((((((((loop2 (λ (x y) ↦ (2 * ((2 * (x + x)) + x)) + y) (λ (x y) ↦ y - x) x 1 1 + 1) / 2) + 1) + x) * 2) + 1) /
                    2) +
                  x) +
                x) +
              1) /
            2) +
          2) +
        x) +
      1) *
    x) +
  2

end Sequence