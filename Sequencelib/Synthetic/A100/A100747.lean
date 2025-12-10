/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A100747 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A100747, offset := 0, maxIndex := 100, derive := true]
def A100747 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((x + x) * (2 - (y % 2))) + x) x 1

end Sequence