/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A084946 sequence
-/

namespace Sequence

@[OEIS := A084946, offset := 0, maxIndex := 9, derive := true]
def A084946 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ 1 + (2 + (2 + y))) x 1 2

end Sequence