/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A145004 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A145004, offset := 0, maxIndex := 16, derive := true]
def A145004 (x : ℕ) : ℕ :=
  Int.toNat <| (((((((((((x / 2) / 2) + x) / 2) - 1) / 2) + x) + x) / 2) + x) + x) + 1

end Sequence