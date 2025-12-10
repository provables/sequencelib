/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017753 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A017753, offset := 89, maxIndex := 100, derive := true]
def A017753 (n : ℕ) : ℕ :=
  let x := n - 89
  Int.toNat <| loop (λ (x y) ↦ ((loop (λ (x y) ↦ 1 + (x * y)) 4 2 * x) / y) + x) x 1

end Sequence