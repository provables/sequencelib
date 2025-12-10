/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A292773 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A292773, offset := 1, maxIndex := 6, derive := true]
def A292773 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop2 (λ (x y) ↦ (y + x) + y) (λ (x y) ↦ (y - x) + y) x 0 1 + 1) + 1) + loop (λ (x _y) ↦ (x + x) + x) x 1) + 2

end Sequence