/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A006186 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A006186, offset := 4, maxIndex := 13, derive := true]
def A006186 (n : ℕ) : ℕ :=
  let x := n - 4
  Int.toNat <| (loop (λ (x _y) ↦ ((2 * 4) - x / 3) + x) x 1 / 2) + 1

end Sequence