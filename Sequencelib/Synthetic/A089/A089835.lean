/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A089835 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A089835, offset := 0, maxIndex := 13, derive := true]
def A089835 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (x * y) * y) (x + x) 1 / loop (λ (x y) ↦ ((y * y) * y) * x) x (1 + x)

end Sequence