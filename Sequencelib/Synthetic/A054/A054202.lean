/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A054202 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A054202, offset := 1, maxIndex := 50, derive := true]
def A054202 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop
        (λ (x y) ↦
          loop (λ (x _y) ↦ loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ y) x 1 x / loop (λ (x y) ↦ x * y) x 1) 1 (1 + y) + x)
        x 1 -
      1) +
    1) *
  loop (λ (x y) ↦ x * y) x 1

end Sequence