/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A335608 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A335608, offset := 2, maxIndex := 22, derive := true]
def A335608 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((loop (λ (x y) ↦ ((loop (λ (x _y) ↦ (2 * ((x + x) + x)) + x) y 2 + x) + x) + x) x 1 * 3) + 1) * 2

end Sequence