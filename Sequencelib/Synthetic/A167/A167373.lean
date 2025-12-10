/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A167373 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A167373, offset := 0, maxIndex := 50, derive := true]
def A167373 (x : ℕ) : ℤ :=
  loop2 (λ (_x y) ↦ 2 + y) (λ (x y) ↦ y - x) (x - (1 - x)) 1 1

end Sequence