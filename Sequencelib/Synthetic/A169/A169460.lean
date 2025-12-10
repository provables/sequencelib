/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A169460 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A169460, offset := 0, maxIndex := 16, derive := true]
def A169460 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (loop (λ (x _y) ↦ x * x) 2 2 - y) * x) (λ (_x _y) ↦ 2) x 1 1

end Sequence