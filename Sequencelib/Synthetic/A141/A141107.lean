/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A141107 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A141107, offset := 1, maxIndex := 62, derive := true]
def A141107 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((loop (λ (x y) ↦ ((y * y) / (2 + x)) + y) (1 + x) 0 + 1) + x) / 2) * 2) + 1

end Sequence