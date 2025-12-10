/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A194757 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A194757, offset := 1, maxIndex := 77, derive := true]
def A194757 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (x % (1 + (2 + 4))) * ((x / (1 + (2 + 4))) + 1)

end Sequence