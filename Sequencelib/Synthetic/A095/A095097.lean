/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A095097 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A095097, offset := 1, maxIndex := 57, derive := true]
def A095097 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ (x y) ↦ ((y * y) / (2 + x)) + y) (3 + x) 0 * 2) + x

end Sequence