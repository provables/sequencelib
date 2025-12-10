/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A199592 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A199592, offset := 0, maxIndex := 10, derive := true]
def A199592 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop (λ (x _y) ↦ x * x) x (loop (λ (x _y) ↦ 1 + (x + x)) 2 2)

end Sequence