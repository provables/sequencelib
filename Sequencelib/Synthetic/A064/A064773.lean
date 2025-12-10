/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A064773 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A064773, offset := 1, maxIndex := 5, derive := true]
def A064773 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y) ↦ (((loop (λ (x _y) ↦ x + x) x 1 / loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 1 1) * y) + x) + x) x 1 +
    1) /
  2

end Sequence