/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A100775 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A100775, offset := 0, maxIndex := 45, derive := true]
def A100775 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y) ↦ (2 * (x * x)) - 1) 2 2 * (1 + x)) + 2) + 2

end Sequence