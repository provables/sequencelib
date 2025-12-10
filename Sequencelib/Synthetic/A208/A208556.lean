/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A208556 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A208556, offset := 1, maxIndex := 100, derive := true]
def A208556 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((2 * loop2 (λ (x y) ↦ 2 * ((2 * (y + y)) + x)) (λ (x _y) ↦ x) x 1 1) * 2) * 2) + 1

end Sequence