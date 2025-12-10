/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A215271 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A215271, offset := 0, maxIndex := 14, derive := true]
def A215271 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y + y) (λ (x y) ↦ x * y) x 1 4

end Sequence