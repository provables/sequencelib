/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A262303 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A262303, offset := 2, maxIndex := 88, derive := true]
def A262303 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((loop (λ (x y) ↦ 2 + ((x / (2 + y)) + x)) x 1 - 2) + 1) / ((x + 1) + 2)

end Sequence