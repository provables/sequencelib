/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A190525 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A190525, offset := 0, maxIndex := 100, derive := true]
def A190525 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((((y * y) + x) / (1 + x)) + x) + y) (λ (x y) ↦ x + y) x 1 1

end Sequence