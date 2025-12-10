/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A021085 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A021085, offset := 0, maxIndex := 98, derive := true]
def A021085 (x : ℕ) : ℕ :=
  Int.toNat <| comprN (λ (x) ↦ if (x % (2 * 4)) ≤ 0 then x else 0) (x % (1 + (2 * 4)))

end Sequence