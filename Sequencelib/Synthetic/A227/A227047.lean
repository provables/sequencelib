/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A227047 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A227047, offset := 0, maxIndex := 42, derive := true]
def A227047 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + loop2 (λ (_x y) ↦ y) (λ (x y) ↦ x + y) x 2 1) / 4

end Sequence