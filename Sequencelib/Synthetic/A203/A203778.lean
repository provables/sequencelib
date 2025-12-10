/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A203778 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A203778, offset := 1, maxIndex := 11, derive := true]
def A203778 (n : ℕ) : ℤ :=
  let x := n - 1
  ((loop (λ (x y) ↦ x * y) (2 * (x + x)) 1 / loop (λ (x y) ↦ x * y) x 1) * loop (λ (x _y) ↦ (-x)) x 1) * 2

end Sequence