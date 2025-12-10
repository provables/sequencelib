/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A157194 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A157194, offset := 0, maxIndex := 32, derive := true]
def A157194 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ (2 * loop (λ (x _y) ↦ 2 * (2 + x)) 2 2) + y) (λ (x y) ↦ x + y) (x + 1) 2 1

end Sequence