/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A351223 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A351223, offset := 2, maxIndex := 18, derive := true]
def A351223 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (loop (λ (x y) ↦ ((2 + y) * x) + x) ((x + x) + x) 1 / loop (λ (x y) ↦ (y * y) * x) x 1) / loop (λ (x y) ↦ x * y) x 1

end Sequence