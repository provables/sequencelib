/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A152822 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A152822, offset := 0, maxIndex := 100, derive := true]
def A152822 (x : ℕ) : ℕ :=
  Int.toNat <| if ((x / 2) % 2) ≤ 0 then 1 else x % 2

end Sequence