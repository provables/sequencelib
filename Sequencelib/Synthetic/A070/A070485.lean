/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070485 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A070485, offset := 0, maxIndex := 100, derive := true]
def A070485 (x : ℕ) : ℕ :=
  Int.toNat <| ((x * x) * x) % (loop (λ (x y) ↦ (2 + y) * x) 2 2 - 1)

end Sequence