/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A287807 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A287807, offset := 0, maxIndex := 23, derive := true]
def A287807 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((y % 2) + (x + x) * 2) + y) (λ (x y) ↦ 2 * (x + y)) x 1 1

end Sequence