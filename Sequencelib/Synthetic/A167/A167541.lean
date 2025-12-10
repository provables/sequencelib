/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A167541 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A167541, offset := 6, maxIndex := 48, derive := true]
def A167541 (n : ℕ) : ℤ :=
  let x := n - 6
  loop (λ (x y) ↦ loop (λ (x y) ↦ 2 + (x - y)) y 2 + x) x 2

end Sequence