/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A248158 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A248158, offset := 0, maxIndex := 100, derive := true]
def A248158 (x : ℕ) : ℤ :=
  (loop (λ (x y) ↦ 2 + (x + y)) x 1 - x * x) * loop (λ (x _y) ↦ (-x)) x 1

end Sequence