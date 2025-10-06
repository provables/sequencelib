/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A274817 sequence
-/

namespace Sequence

@[OEIS := A274817, offset := 0, maxIndex := 100, derive := true]
def A274817 (x : ℕ) : ℤ :=
  (loop (λ (x _y) ↦ (-x)) x 1 - loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ (-x)) x 1 1) + loop (λ (x _y) ↦ x + x) x 1

end Sequence