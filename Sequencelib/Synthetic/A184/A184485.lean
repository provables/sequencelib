/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A184485 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A184485, offset := 1, maxIndex := 57, derive := true]
def A184485 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((((((((((2 + x) / 4) + x) / 2) / 3) + 1) + x) / 2) + 1) + x) + x) + x) + x) / 2) + x) + x) + 2

end Sequence