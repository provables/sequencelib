/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A337638 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A337638, offset := 0, maxIndex := 6, derive := true]
def A337638 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (((y * y) / 3) + x) + y) (λ (x _y) ↦ x) x 1 1

end Sequence