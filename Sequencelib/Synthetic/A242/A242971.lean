/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A242971 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A242971, offset := 0, maxIndex := 51, derive := true]
def A242971 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x _y) ↦ x + x) x 1) (x % 2) (loop (λ (x y) ↦ y - x) x 1)

end Sequence