/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A238923 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A238923, offset := 1, maxIndex := 100, derive := true]
def A238923 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (x y) ↦ 3 * (x + y)) (λ (x _y) ↦ x) x 2 0 * 2) * 3

end Sequence