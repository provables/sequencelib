/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A111352 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A111352, offset := 0, maxIndex := 50, derive := true]
def A111352 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ loop2 (λ (_x y) ↦ y) (λ (x y) ↦ (x + y) + y) y 1 0 - x) x 1

end Sequence