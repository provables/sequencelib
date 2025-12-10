/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A063120 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A063120, offset := 1, maxIndex := 50, derive := true]
def A063120 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 2 + (2 + loop (λ (_x y) ↦ y) (loop (λ (x _y) ↦ 2 + (x + x)) 2 2 * x) 1)

end Sequence