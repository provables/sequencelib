/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A108355 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A108355, offset := 0, maxIndex := 72, derive := true]
def A108355 (x : ℕ) : ℕ :=
  Int.toNat <| (1 - (((x / 2) / 2) * loop2 (λ (_x y) ↦ 2 - y) (λ (x _y) ↦ x) x 1 0)) + x

end Sequence