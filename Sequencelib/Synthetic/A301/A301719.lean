/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A301719 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A301719, offset := 0, maxIndex := 100, derive := true]
def A301719 (x : ℕ) : ℕ :=
  Int.toNat <| (((1 + x) * (loop (λ (x _y) ↦ 2 + (x + x)) 2 2 * x)) / (4 + 1)) + 1

end Sequence