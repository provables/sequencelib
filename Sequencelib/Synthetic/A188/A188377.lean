/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A188377 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A188377, offset := 3, maxIndex := 43, derive := true]
def A188377 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| loop2 (λ (x y) ↦ 1 + (x * y)) (λ (x _y) ↦ x) 4 1 x

end Sequence