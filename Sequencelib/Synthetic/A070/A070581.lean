/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070581 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A070581, offset := 0, maxIndex := 78, derive := true]
def A070581 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x * x) 2 x % loop (λ (x _y) ↦ 2 + (x * x)) 2 2

end Sequence