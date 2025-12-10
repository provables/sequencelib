/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131562 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A131562, offset := 0, maxIndex := 100, derive := true]
def A131562 (x : ℕ) : ℤ :=
  loop2 (λ (_x y) ↦ y + y) (λ (x y) ↦ x - y) x 1 0 - ((1 + x) * x) % 3

end Sequence