/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A093968 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A093968, offset := 0, maxIndex := 40, derive := true]
def A093968 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y + y) (λ (x _y) ↦ x) x x x / 2

end Sequence