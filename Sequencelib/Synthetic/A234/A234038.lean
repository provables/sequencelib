/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A234038 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A234038, offset := 0, maxIndex := 100, derive := true]
def A234038 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y) ↦ ((3 + 2) * (x * 2)) - 1) x 2 - 1) % loop (λ (x _y) ↦ 2 * x) x 1) + 1

end Sequence