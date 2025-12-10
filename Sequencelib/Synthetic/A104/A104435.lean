/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A104435 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A104435, offset := 1, maxIndex := 88, derive := true]
def A104435 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + loop2 (λ (_x y) ↦ y) (λ (_x _y) ↦ 1) x 0 2

end Sequence