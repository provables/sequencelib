/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A053991 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A053991, offset := 2, maxIndex := 7, derive := true]
def A053991 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (((loop (λ (x y) ↦ loop2 (λ (_x y) ↦ y + y) (λ (x _y) ↦ x) y x 2) x 1 - x) / 2) + 1) + 2

end Sequence