/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A335725 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A335725, offset := 1, maxIndex := 7, derive := true]
def A335725 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((1 + loop (λ (x y) ↦ (y / 3) + x) ((x + x) + x) 1) + loop (λ (x _y) ↦ (x + x) + x) x 1) / 3

end Sequence