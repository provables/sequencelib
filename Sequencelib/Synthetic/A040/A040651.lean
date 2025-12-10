/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A040651 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A040651, offset := 0, maxIndex := 62, derive := true]
def A040651 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ 1 + (x * x)) 2 2 * if x ≤ 0 then 1 else 2 - (x % 2)

end Sequence