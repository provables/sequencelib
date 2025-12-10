/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A083570 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A083570, offset := 0, maxIndex := 98, derive := true]
def A083570 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((((((1 + (((x % 3) % 2) + x)) / 3) + 1) + x) * 2) - 1) / 3) + 2) % 2) - x) % 3

end Sequence