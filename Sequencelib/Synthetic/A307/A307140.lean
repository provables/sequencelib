/-
* Copyright (c) 2025 Walter Moreira, Joe Stubbs.
  Released under CC BY-SA 4.0 license as described in the file LICENSE.
  Authors: Walter Moreira and Joe Stubbs
  Translation to Lean 4 and integration into Sequencelib.

* Copyright (c) Thibault Gauthier, Josef Urban.
  Released under GPL-3.0 license.
  Authors: Thibault Gauthier, Josef Urban.
  Original SML code for the sequence.
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A307140 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A307140, offset := 5, maxIndex := 10, derive := true]
def A307140 (n : ℕ) : ℕ :=
  let x := n - 5
  Int.toNat <| ((((((((((((((((loop (λ (x y) ↦ 1 + ((x * y) + x)) x 1 - x) / 2) + 2) * 2) - x) / 2) / 2) + 1) / 2) + x) * x) + 1) /
          2) +
        2) +
      x) /
    2) +
  x

end Sequence