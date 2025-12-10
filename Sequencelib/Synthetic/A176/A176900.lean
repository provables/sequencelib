/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A176900 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A176900, offset := 0, maxIndex := 27, derive := true]
def A176900 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ 2 * ((x - y) - y)) (λ (x _y) ↦ x) x 1 1 * (1 + x)

end Sequence