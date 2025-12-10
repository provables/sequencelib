/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A058667 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A058667, offset := 0, maxIndex := 16, derive := true]
def A058667 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((x * (2 + y)) + x) * 2) (x - 1) x

end Sequence