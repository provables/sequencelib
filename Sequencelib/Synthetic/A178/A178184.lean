/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A178184 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A178184, offset := 1, maxIndex := 13, derive := true]
def A178184 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y) ↦ loop (λ (x y) ↦ loop (λ (x _y) ↦ 1 + (x + x)) (1 + y) x) y 0 + x) (1 + x) 1 + 1) - 1) + x

end Sequence