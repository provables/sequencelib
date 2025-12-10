/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A242206 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A242206, offset := 5, maxIndex := 52, derive := true]
def A242206 (n : ℕ) : ℕ :=
  let x := n - 5
  Int.toNat <| loop (λ (x y) ↦ ((loop2 (λ (x y) ↦ 1 + (x + y)) (λ (x _y) ↦ x) y 2 1 + y) + x) + x) x 2 * 2

end Sequence