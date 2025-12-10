/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A040091 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A040091, offset := 0, maxIndex := 53, derive := true]
def A040091 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + 4) * (2 + loop (λ (x _y) ↦ if x ≤ 0 then 2 else 0) x x)

end Sequence