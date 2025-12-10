/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000894 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A000894, offset := 0, maxIndex := 100, derive := true]
def A000894 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y) ↦ (1 + y) * (x * y)) (x + x) 1 / loop (λ (x y) ↦ ((y * y) * y) * x) x 1) / loop (λ (x y) ↦ x * y) x 1) /
  (1 + x)

end Sequence