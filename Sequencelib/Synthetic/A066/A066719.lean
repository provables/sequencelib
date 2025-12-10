/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A066719 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A066719, offset := 1, maxIndex := 5, derive := true]
def A066719 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ if x ≤ 0 then 1 else loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 0 1 + y) (λ (x _y) ↦ x) x x 0 + 1

end Sequence