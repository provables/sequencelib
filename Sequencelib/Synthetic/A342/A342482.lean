/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A342482 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A342482, offset := 3, maxIndex := 32, derive := true]
def A342482 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ 2 * (x + y)) (1 + y) y + x) x 0

end Sequence