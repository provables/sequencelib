/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A094055 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A094055, offset := 1, maxIndex := 8, derive := true]
def A094055 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (x _y) ↦ 2 + (2 * ((x + x) / 3))) x 1 - x

end Sequence