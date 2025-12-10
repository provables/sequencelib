/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A238470 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A238470, offset := 0, maxIndex := 90, derive := true]
def A238470 (x : ℕ) : ℤ :=
  ((loop (λ (x y) ↦ (y * y) + x) x 1 % (1 + (2 + 4))) - 1) / 3

end Sequence