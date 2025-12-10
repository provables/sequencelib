/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140780 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A140780, offset := 0, maxIndex := 20, derive := true]
def A140780 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ y + x) (λ (x y) ↦ ((2 * 4) * (x + y)) + y) x 1 2

end Sequence