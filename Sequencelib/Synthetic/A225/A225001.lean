/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A225001 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A225001, offset := 1, maxIndex := 67, derive := true]
def A225001 (n : ℕ) : ℤ :=
  let x := n - 1
  (((if x ≤ 0 then 2 * 4 else 1 + x) - x / 2) / 2) + x

end Sequence