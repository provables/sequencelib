/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A011987 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A011987, offset := 6, maxIndex := 10, derive := true]
def A011987 (n : ℕ) : ℕ :=
  let x := n - 6
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ 2 * (x + x)) y y / x) x 1 + (x + x)

end Sequence