/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A182136 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A182136, offset := 2, maxIndex := 10, derive := true]
def A182136 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| 1 + loop (λ (x y) ↦ (x - (x / 3)) + y) x x

end Sequence