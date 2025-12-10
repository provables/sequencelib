/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A293642 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A293642, offset := 0, maxIndex := 100, derive := true]
def A293642 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ 1 + y) (λ (x y) ↦ x + y) x 0 2 / ((2 * 2) + 1)

end Sequence