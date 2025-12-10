/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A077834 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A077834, offset := 0, maxIndex := 28, derive := true]
def A077834 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ ((1 + ((x % 3) + x)) + x) + x) x 0 + 1

end Sequence