/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A173393 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A173393, offset := 1, maxIndex := 16, derive := true]
def A173393 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((loop (λ (x _y) ↦ loop (λ (x y) ↦ (2 + y) * x) 2 x) x 3 + 1) + x) + x) * 2) + 1) + 2) + x) * 2

end Sequence