/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A174141 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A174141, offset := 1, maxIndex := 65, derive := true]
def A174141 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x) ↦ ((x / (1 + 4)) % (2 + 3)) - 1) x

end Sequence