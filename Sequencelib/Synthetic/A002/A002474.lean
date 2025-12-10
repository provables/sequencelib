/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A002474 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A002474, offset := 0, maxIndex := 48, derive := true]
def A002474 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 2 * ((2 * ((x * y) + x)) * y)) x 2

end Sequence