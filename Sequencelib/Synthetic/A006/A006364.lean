/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A006364 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A006364, offset := 1, maxIndex := 100, derive := true]
def A006364 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((loop2 (λ (x y) ↦ x + y) (λ (_x y) ↦ y / 2) x 1 x % 2) - 1) - x) % 2) + x / 2) * 2) + x

end Sequence