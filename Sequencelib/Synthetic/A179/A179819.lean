/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A179819 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A179819, offset := 1, maxIndex := 67, derive := true]
def A179819 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((1 + (x + x)) / 3) + 2) + x) * (4 + 1)

end Sequence