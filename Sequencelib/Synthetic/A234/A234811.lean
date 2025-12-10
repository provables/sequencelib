/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A234811 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A234811, offset := 0, maxIndex := 9, derive := true]
def A234811 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ loop (λ (x _y) ↦ 2 * ((x + x) + x)) y x - x) (λ (_x y) ↦ y) x 1 x

end Sequence