/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001543 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A001543, offset := 0, maxIndex := 11, derive := true]
def A001543 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x * y) + (1 + 4)) (λ (x y) ↦ x * y) x 1 1

end Sequence