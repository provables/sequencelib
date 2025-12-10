/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A212742 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A212742, offset := 0, maxIndex := 36, derive := true]
def A212742 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (_x y) ↦ loop (λ (x _y) ↦ ((1 + ((x * x) / 2)) - x % 2) + x) 2 y) x 1 + x % 2

end Sequence