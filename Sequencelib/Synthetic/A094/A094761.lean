/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A094761 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A094761, offset := 0, maxIndex := 71, derive := true]
def A094761 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y) ↦ (x - 1) - if x ≤ 0 then 1 else y + y) x x + x) + x) + x

end Sequence