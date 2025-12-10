/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A186496 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A186496, offset := 1, maxIndex := 81, derive := true]
def A186496 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((3 * (x * x)) / (1 + 4)) + x) / 2) + 1) + x

end Sequence