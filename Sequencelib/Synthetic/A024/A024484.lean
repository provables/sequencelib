/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A024484 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A024484, offset := 2, maxIndex := 14, derive := true]
def A024484 (n : ℕ) : ℤ :=
  let x := n - 2
  (loop (λ (x y) ↦ x * y) ((x + x) + x) 2 / loop (λ (x y) ↦ (x * y) + x) x 1) / loop (λ (x y) ↦ x * y) (x + x) 1

end Sequence