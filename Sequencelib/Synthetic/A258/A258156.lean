/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A258156 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A258156, offset := 2, maxIndex := 5, derive := true]
def A258156 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop2 (λ (x y) ↦ 2 + (x + y)) (λ (x _y) ↦ x) (x * 2) 1 (x / 2) * x

end Sequence