/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A132796 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A132796, offset := 0, maxIndex := 30, derive := true]
def A132796 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ loop2 (λ (x y) ↦ (x + y) + y) (λ (x _y) ↦ x) y 1 2 - x) x 1 - x) / 2

end Sequence