/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A260304 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A260304, offset := 0, maxIndex := 27, derive := true]
def A260304 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x + y) (λ (x y) ↦ (2 * (y + y)) - x) x 2 1

end Sequence