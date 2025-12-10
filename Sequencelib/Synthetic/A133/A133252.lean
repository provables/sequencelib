/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A133252 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A133252, offset := 0, maxIndex := 37, derive := true]
def A133252 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x y) ↦ x + y) y 1 * (1 + y)) + x) x 1

end Sequence