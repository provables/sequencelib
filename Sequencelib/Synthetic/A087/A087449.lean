/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A087449 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A087449, offset := 0, maxIndex := 22, derive := true]
def A087449 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ 2 + (x * y)) (λ (_x _y) ↦ 2 * 2) x x 1 + 1

end Sequence