/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A267807 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A267807, offset := 0, maxIndex := 70, derive := true]
def A267807 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x % 3) + y) (λ (x _y) ↦ x) x 1 0

end Sequence