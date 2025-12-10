/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A292543 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A292543, offset := 1, maxIndex := 24, derive := true]
def A292543 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (_x y) ↦ loop (λ (x _y) ↦ x + x) (1 + (2 + y)) 3) (x + x) x

end Sequence