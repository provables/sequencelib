/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A021189 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A021189, offset := 0, maxIndex := 98, derive := true]
def A021189 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + loop2 (λ (x y) ↦ (-(x + y))) (λ (x _y) ↦ x) x 1 2) + 2) % loop (λ (x _y) ↦ x + x) x 2

end Sequence