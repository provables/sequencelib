/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A253947 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A253947, offset := 6, maxIndex := 100, derive := true]
def A253947 (n : ℕ) : ℕ :=
  let x := n - 6
  Int.toNat <| loop (λ (x y) ↦ (((2 * ((x + x) + x)) + x) / y) + x) x 3 * 2

end Sequence