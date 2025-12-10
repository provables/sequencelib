/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A199688 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A199688, offset := 0, maxIndex := 100, derive := true]
def A199688 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop (λ (x _y) ↦ 2 * (loop (λ (x _y) ↦ 1 + (x + x)) 2 x + x)) x 2

end Sequence