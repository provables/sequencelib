/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A053614 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A053614, offset := 1, maxIndex := 6, derive := true]
def A053614 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((if ((x - 2) - 1) ≤ 0 then 1 else x % (1 + x)) + x) * x) + 1) / 2) + 1) + if x ≤ 0 then 1 else 2) + x

end Sequence