/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A111733 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A111733, offset := 0, maxIndex := 35, derive := true]
def A111733 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ 2 + x) x 2 0 - 2) * 2) + 1

end Sequence