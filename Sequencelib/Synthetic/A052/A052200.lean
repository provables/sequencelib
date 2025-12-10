/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A052200 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A052200, offset := 0, maxIndex := 12, derive := true]
def A052200 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((y * x) + x) * 4) (λ (_x y) ↦ y) (x + x) 1 x

end Sequence