/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A016871 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A016871, offset := 0, maxIndex := 10, derive := true]
def A016871 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (((x * x) * x) * y) * y) (λ (x _y) ↦ x) 2 (1 + ((2 * (x + x)) + x)) 1

end Sequence