/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A234319 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A234319, offset := 0, maxIndex := 54, derive := true]
def A234319 (x : ℕ) : ℤ :=
  (loop2 (λ (x y) ↦ (((x + x) / y) * (x + y)) + x) (λ (_x y) ↦ y) x 1 x - 1) - x

end Sequence