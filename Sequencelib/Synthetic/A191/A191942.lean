/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A191942 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A191942, offset := 0, maxIndex := 3, derive := true]
def A191942 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (((((1 + loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (x + x) 1 0) / 2) + 1) / 2) + 1) - y) x x

end Sequence