/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A179054 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A179054, offset := 1, maxIndex := 100, derive := true]
def A179054 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| if ((1 + x) % 4) ≤ 0 then ((x / 2) + 2) + 1 else 1

end Sequence