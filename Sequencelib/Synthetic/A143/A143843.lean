/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A143843 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A143843, offset := 0, maxIndex := 2, derive := true]
def A143843 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((loop (λ (x _y) ↦ x * x) 1 ((1 + (x + x)) * (x + 1)) + 2) + 2) + 2) + 2) * 2) + 1) + 2

end Sequence