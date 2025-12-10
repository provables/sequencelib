/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A238630 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A238630, offset := 0, maxIndex := 100, derive := true]
def A238630 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop2 (λ (_x y) ↦ 3 * ((2 + y) * y)) (λ (_x y) ↦ (y + y) + y) x 1 1 + 1) / 2) + 1) / 2

end Sequence