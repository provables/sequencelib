/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A083225 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A083225, offset := 0, maxIndex := 19, derive := true]
def A083225 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (_x y) ↦ 1 + y) (λ (x _y) ↦ (((2 + x) + x) + x) + x) (x * 3) 1 1 / 2) + 1

end Sequence