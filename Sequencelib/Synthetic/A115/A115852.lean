/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A115852 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A115852, offset := 0, maxIndex := 20, derive := true]
def A115852 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ x * x) 2 (loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 1 0) / 2) / 2

end Sequence