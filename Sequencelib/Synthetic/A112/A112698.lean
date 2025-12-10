/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A112698 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A112698, offset := 0, maxIndex := 100, derive := true]
def A112698 (x : ℕ) : ℕ :=
  Int.toNat <| loop
  (λ (x y) ↦
    loop (λ (x _y) ↦ loop (λ (x y) ↦ (((2 * (x * y)) - x) * 4) * 2) x 1 / loop (λ (x y) ↦ (x * y) + x) x 1) 1 y + x)
  x 1

end Sequence