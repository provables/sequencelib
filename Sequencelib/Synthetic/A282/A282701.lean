/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A282701 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A282701, offset := 0, maxIndex := 21, derive := true]
def A282701 (x : ℕ) : ℕ :=
  Int.toNat <| (((((comprN (λ (x) ↦ ((((((((x / 2) / 2) / 3) + x) / 2) / 2) + 1) % 2) - x % 2) x - 1) / 2) + 2) * 2) - 1) % (x + 1)

end Sequence