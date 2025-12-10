/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A282414 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A282414, offset := 0, maxIndex := 100, derive := true]
def A282414 (x : ℕ) : ℕ :=
  Int.toNat <| loop
    (λ (x _y) ↦
      ((((1 + loop (λ (x _y) ↦ loop (λ (_x y) ↦ y) ((x - 1) - 2) 2) (x) 0) / 2) + x) % 2) - if x ≤ 0 then 1 else 2)
    x 1 %
  loop (λ (x _y) ↦ x + x) x 2

end Sequence