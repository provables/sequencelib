/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A006904 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A006904, offset := 4, maxIndex := 31, derive := true]
def A006904 (n : ℕ) : ℕ :=
  let x := n - 4
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x _y) ↦ (-x)) y y + x) + x) x 1

end Sequence