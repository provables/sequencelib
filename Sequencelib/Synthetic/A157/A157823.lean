/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A157823 sequence
-/

namespace Sequence

@[OEIS := A157823, offset := 0, maxIndex := 100, derive := true]
def A157823 (x : ℕ) : ℤ :=
  (2 * loop (λ (x _y) ↦ x + x) x 2) - loop2 (λ (x y) ↦ x * y) (λ (_x _y) ↦ 2) x (3 * 3) 1

end Sequence