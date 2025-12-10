/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A127985 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A127985, offset := 0, maxIndex := 29, derive := true]
def A127985 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ 1 + (x + x)) y y - x) x 0 / 2

end Sequence