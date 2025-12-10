/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A285952 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A285952, offset := 1, maxIndex := 86, derive := true]
def A285952 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((loop2 (λ (x y) ↦ x + y) (λ (_x y) ↦ y / 2) x 0 (x / 3) % 2) + 1) + x) % 3) + 1) / 2

end Sequence