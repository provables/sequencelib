/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A247565 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A247565, offset := 0, maxIndex := 100, derive := true]
def A247565 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ (x + y) + y) (λ (x y) ↦ (y - x) + y) x 1 0 + loop (λ (x _y) ↦ x + x) x 1

end Sequence