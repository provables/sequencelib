/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A063236 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A063236, offset := 1, maxIndex := 50, derive := true]
def A063236 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((((((((if x ≤ 0 then 1 else x % 3) + x) + x) + x) + x) + x) + x) + x) + x) + x) + x) - x / 3) + 2) + x) + 2

end Sequence