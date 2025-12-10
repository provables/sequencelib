/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A040813 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A040813, offset := 0, maxIndex := 62, derive := true]
def A040813 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (loop (λ (x _y) ↦ (loop (λ (x y) ↦ (x * x) + y) 2 2 + 2) * (x % 3)) x 1 + 1) - 1) 2 x

end Sequence