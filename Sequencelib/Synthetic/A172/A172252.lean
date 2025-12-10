/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A172252 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A172252, offset := 1, maxIndex := 33, derive := true]
def A172252 (n : ℕ) : ℤ :=
  let x := n - 1
  (2 * loop (λ (x _y) ↦ 2 * (2 + x)) x 0) - 1

end Sequence