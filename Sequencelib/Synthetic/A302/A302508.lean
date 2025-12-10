/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A302508 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A302508, offset := 2, maxIndex := 8, derive := true]
def A302508 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((((((((((((((((2 + x) * x) + (x * x) / 2) / 3) + x) + x) + x) / 2) + x) + x) * x) + 2) / 2) + x) + x) + 1) + 2

end Sequence