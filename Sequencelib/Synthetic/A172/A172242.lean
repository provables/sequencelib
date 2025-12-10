/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A172242 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A172242, offset := 10, maxIndex := 30, derive := true]
def A172242 (n : ℕ) : ℕ :=
  let x := n - 10
  Int.toNat <| loop (λ (x y) ↦ 2 * (((2 * ((2 * (x + x)) + x)) / y) + x)) x 1

end Sequence