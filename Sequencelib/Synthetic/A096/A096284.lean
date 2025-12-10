/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A096284 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A096284, offset := 3, maxIndex := 93, derive := true]
def A096284 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| if loop2 (λ (x y) ↦ x - y) (λ (x _y) ↦ x) x 1 1 ≤ 0 then 1 else 2

end Sequence