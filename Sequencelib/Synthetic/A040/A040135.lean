/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A040135 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A040135, offset := 0, maxIndex := 65, derive := true]
def A040135 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y) ↦ (2 + y) / x) (λ (_x _y) ↦ 2) x 2 0 * 2) * 3

end Sequence