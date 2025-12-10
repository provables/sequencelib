/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A216596 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A216596, offset := 0, maxIndex := 4, derive := true]
def A216596 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ 1 + (2 * ((2 * (x + x)) + x))) (loop (λ (x y) ↦ x * y) x 1) 0

end Sequence