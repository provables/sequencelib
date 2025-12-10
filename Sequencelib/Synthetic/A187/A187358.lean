/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A187358 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A187358, offset := 0, maxIndex := 17, derive := true]
def A187358 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x y) ↦ 2 * ((2 * (x * y)) - x)) x 1 / loop (λ (x y) ↦ (x * y) + x) x 1) 1 ((1 + (x + x)) + x)

end Sequence