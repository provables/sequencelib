/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A292151 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A292151, offset := 1, maxIndex := 8, derive := true]
def A292151 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop (λ (_x y) ↦ loop (λ (x y) ↦ (y * y) + x) (y / 3) 1) x 0 + x) * 2) + 1) + x

end Sequence