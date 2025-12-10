/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A171604 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A171604, offset := 1, maxIndex := 7, derive := true]
def A171604 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| if ((x - 2) - 2) ≤ 0 then 1 else x - 2

end Sequence