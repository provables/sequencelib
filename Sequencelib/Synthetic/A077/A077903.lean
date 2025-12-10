/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A077903 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A077903, offset := 0, maxIndex := 34, derive := true]
def A077903 (x : ℕ) : ℤ :=
  (loop (λ (x y) ↦ (((1 + (x - (x / 2))) + y) % 2) - (x + x)) x 1 + 1) / 2

end Sequence