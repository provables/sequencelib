/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A124090 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A124090, offset := 7, maxIndex := 38, derive := true]
def A124090 (n : ℕ) : ℕ :=
  let x := n - 7
  Int.toNat <| loop (λ (x y) ↦ (((2 * ((x + x) + x)) + x) / y) + x) x 1 - 1

end Sequence