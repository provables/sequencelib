/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A290974 sequence
-/

namespace Sequence

@[OEIS := A290974, offset := 0, maxIndex := 12, derive := true]
def A290974 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ loop2 (λ (x y) ↦ x * y) (λ (_x _y) ↦ (-2)) (y + y) 1 x + x) x 1

end Sequence