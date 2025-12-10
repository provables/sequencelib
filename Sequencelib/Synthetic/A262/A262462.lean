/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A262462 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A262462, offset := 1, maxIndex := 5, derive := true]
def A262462 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop
      (λ (x _y) ↦
        (((((((((((((((loop2 (λ (_x y) ↦ y) (λ (x y) ↦ y - x) x 1 0 + (x * x) * x) / 2) + 1) + x) + 1) / 2) + 2) + x) /
                        2) +
                      x) +
                    x) +
                  1) /
                2) *
              2) -
            1) -
          x)
      x 1 /
    2) +
  1

end Sequence