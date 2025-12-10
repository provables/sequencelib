/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A106469 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A106469, offset := 0, maxIndex := 95, derive := true]
def A106469 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ 2 + (2 % y)) (λ (x _y) ↦ x) x 1 x

end Sequence