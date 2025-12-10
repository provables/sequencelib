/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131708 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A131708, offset := 0, maxIndex := 50, derive := true]
def A131708 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop2 (λ (x y) ↦ x - y) (λ (x _y) ↦ x) y 1 0 + x) + x) x 0

end Sequence