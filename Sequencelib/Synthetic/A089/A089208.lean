/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A089208 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A089208, offset := 1, maxIndex := 7, derive := true]
def A089208 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ (x y) ↦ (x * y) + x) (λ (_x y) ↦ y) (3 * (1 + x)) 1 x

end Sequence