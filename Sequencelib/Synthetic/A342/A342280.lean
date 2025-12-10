/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A342280 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A342280, offset := 0, maxIndex := 54, derive := true]
def A342280 (x : ℕ) : ℕ :=
  Int.toNat <| ((((loop (λ (x y) ↦ ((y * y) / ((2 + y) + x)) + y) ((1 + x) + x) 1 + 2) + x) + x) + x) + x

end Sequence