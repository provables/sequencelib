/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A121627 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A121627, offset := 1, maxIndex := 22, derive := true]
def A121627 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (x y) ↦ (x * y) + x) x 1 * loop2 (λ (x y) ↦ x - y) (λ (x y) ↦ x + y) x 1 1

end Sequence