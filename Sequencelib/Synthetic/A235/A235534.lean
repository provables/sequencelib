/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A235534 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A235534, offset := 0, maxIndex := 16, derive := true]
def A235534 (x : ℕ) : ℕ :=
  Int.toNat <| loop
  (λ (x _y) ↦
    (loop (λ (x y) ↦ x * y) ((x + x) + x) 1 / loop (λ (x y) ↦ (x * y) + x) (x + x) 1) / loop (λ (x y) ↦ x * y) x 1)
  1 (x + x)

end Sequence