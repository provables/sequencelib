/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A004256 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A004256, offset := 0, maxIndex := 100, derive := true]
def A004256 (x : ℕ) : ℕ :=
  Int.toNat <| (2 + x) * (loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) y x) x 0 * x)

end Sequence