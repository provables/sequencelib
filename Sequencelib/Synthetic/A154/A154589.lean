/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A154589 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A154589, offset := 0, maxIndex := 17, derive := true]
def A154589 (x : ℕ) : ℤ :=
  loop (λ (x _y) ↦ loop (λ (x _y) ↦ 1 - x) x 2 * x) x 1 + if x ≤ 0 then 3 else 0

end Sequence