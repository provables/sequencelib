/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017431 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A017431, offset := 0, maxIndex := 13, derive := true]
def A017431 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (((x * x) * y) * y) * y) (λ (x _y) ↦ x) 2 (1 + (2 + (loop (λ (x _y) ↦ 1 + (x + x)) 2 2 * x))) 1

end Sequence