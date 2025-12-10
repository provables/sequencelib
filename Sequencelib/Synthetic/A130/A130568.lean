/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A130568 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A130568, offset := 0, maxIndex := 60, derive := true]
def A130568 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ ((y * y) / (2 + x)) + y) x 0 * 2) + 1

end Sequence