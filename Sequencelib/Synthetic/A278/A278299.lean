/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A278299 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A278299, offset := 2, maxIndex := 11, derive := true]
def A278299 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((((((((((x / 2) + x) / 2) * 2) * x) / 3) + 1) + x) / 2) + x) + 2

end Sequence