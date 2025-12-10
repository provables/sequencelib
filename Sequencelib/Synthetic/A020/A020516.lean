/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A020516 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A020516, offset := 0, maxIndex := 100, derive := true]
def A020516 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ 1 + loop (λ (x _y) ↦ x + x) y x) (λ (_x y) ↦ y) (2 * 3) 1 x

end Sequence