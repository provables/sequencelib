/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A285524 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A285524, offset := 4, maxIndex := 78, derive := true]
def A285524 (n : ℕ) : ℕ :=
  let x := n - 4
  Int.toNat <| ((((2 - (((x / 2) / 2) / 3)) / 2) + 2) + x) / 3

end Sequence