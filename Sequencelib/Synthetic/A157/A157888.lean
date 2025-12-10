/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A157888 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A157888, offset := 1, maxIndex := 100, derive := true]
def A157888 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ ((2 * 4) + 1) * (1 + x)) 2 ((2 + x) * x)

end Sequence