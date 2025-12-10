/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A109046 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A109046, offset := 0, maxIndex := 100, derive := true]
def A109046 (x : ℕ) : ℕ :=
  Int.toNat <| ((2 * if (x % (1 + 4)) ≤ 0 then 0 else 2) * x) + x

end Sequence