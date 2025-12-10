/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A134168 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A134168, offset := 0, maxIndex := 100, derive := true]
def A134168 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ x + x) x (1 + (2 + loop (λ (x _y) ↦ x + x) x 1)) - loop (λ (x _y) ↦ (x + x) + x) x 1) / 2

end Sequence