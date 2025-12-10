/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A227906 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A227906, offset := 2, maxIndex := 61, derive := true]
def A227906 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (((1 + if (x / 2) ≤ 0 then 0 else x) * (x % 2)) + x) + 2

end Sequence