/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A036235 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A036235, offset := 0, maxIndex := 3, derive := true]
def A036235 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((loop (λ (x _y) ↦ 1 + ((x * x) + x)) 2 x + 1) * (1 + x)) / 3) + 2) * 2) - 1) + x

end Sequence