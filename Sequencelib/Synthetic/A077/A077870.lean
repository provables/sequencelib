/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A077870 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A077870, offset := 0, maxIndex := 45, derive := true]
def A077870 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ (y % 2) + 2 * (x - y)) (λ (x _y) ↦ x) x 1 0

end Sequence