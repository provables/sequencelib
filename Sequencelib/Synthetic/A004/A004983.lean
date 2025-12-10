/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A004983 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A004983, offset := 0, maxIndex := 100, derive := true]
def A004983 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ loop (λ (x _y) ↦ (x - 2) + x) 3 y * x) x 1 / loop (λ (x y) ↦ x * y) x 1

end Sequence