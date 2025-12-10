/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A018353 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A018353, offset := 1, maxIndex := 6, derive := true]
def A018353 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ ((y - x) + y) + y) (λ (x y) ↦ (x + x) + y) x 1 2

end Sequence