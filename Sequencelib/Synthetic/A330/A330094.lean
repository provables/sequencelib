/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A330094 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A330094, offset := 1, maxIndex := 60, derive := true]
def A330094 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ (((1 + (((x - ((x / 2) / 2)) / 4) + x)) % 2) + 1) + x) x 2 + x

end Sequence