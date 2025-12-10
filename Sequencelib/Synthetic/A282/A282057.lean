/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A282057 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A282057, offset := 1, maxIndex := 48, derive := true]
def A282057 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((((1 + loop2 (λ (x y) ↦ x - y) (λ (x _y) ↦ x) x 2 1) + 4) + x) / 2) + x) + x) + 1) / 2) * 2) + 1

end Sequence