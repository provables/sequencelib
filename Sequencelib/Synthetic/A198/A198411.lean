/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A198411 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A198411, offset := 0, maxIndex := 7, derive := true]
def A198411 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ (x * x) + x) 1 (loop (λ (x _y) ↦ x * x) x 2) / ((3 * 2) + 1)) + 1

end Sequence