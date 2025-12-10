/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A091003 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A091003, offset := 0, maxIndex := 100, derive := true]
def A091003 (x : ℕ) : ℤ :=
  ((loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ 2 * ((x + x) + x)) x 1 1 * loop (λ (x _y) ↦ (-x)) x 1) + 1) / 2

end Sequence