/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A119910 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A119910, offset := 1, maxIndex := 84, derive := true]
def A119910 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ (_x y) ↦ 1 + y) (λ (x y) ↦ y - x) x 1 2

end Sequence