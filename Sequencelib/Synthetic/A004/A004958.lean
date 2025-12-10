/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A004958 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A004958, offset := 0, maxIndex := 100, derive := true]
def A004958 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (((y * y) / (1 + x)) + 1) + y) (x + x) 0 + x

end Sequence