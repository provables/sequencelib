/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A063369 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A063369, offset := 2, maxIndex := 42, derive := true]
def A063369 (n : ℕ) : ℤ :=
  let x := n - 2
  ((loop (λ (_x y) ↦ loop (λ (x _y) ↦ 3 * (2 * x)) 2 y - 2) x 1 - 1) * 3) - 1

end Sequence