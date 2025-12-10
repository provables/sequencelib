/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A151875 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A151875, offset := 1, maxIndex := 6, derive := true]
def A151875 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop
        (λ (x y) ↦
          loop (λ (x y) ↦ loop (λ (x y) ↦ y * loop2 (λ (x y) ↦ (x * y) - y) (λ (x _y) ↦ x) x 1 0) y x + x) y 1 + x)
        x 1 +
      1) +
    1) +
  ((x + x) + x)

end Sequence