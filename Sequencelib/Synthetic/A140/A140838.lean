/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140838 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A140838, offset := 1, maxIndex := 5, derive := true]
def A140838 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((1 % x) + y) * x) x 1 + x

end Sequence