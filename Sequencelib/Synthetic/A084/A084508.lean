/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A084508 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A084508, offset := 0, maxIndex := 24, derive := true]
def A084508 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ 2 + (y * y)) (λ (_x y) ↦ y + y) x 1 1 / 2

end Sequence