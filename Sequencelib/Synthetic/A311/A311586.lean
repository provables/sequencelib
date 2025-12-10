/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A311586 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A311586, offset := 0, maxIndex := 49, derive := true]
def A311586 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ (loop (λ (x y) ↦ (x + y) / 2) 2 x / 2) + y) x 1 + x) * if x ≤ 0 then 1 else 2

end Sequence