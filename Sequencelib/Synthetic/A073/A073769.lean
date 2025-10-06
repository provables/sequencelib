/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A073769 sequence
-/

namespace Sequence

@[OEIS := A073769, offset := 0, maxIndex := 17, derive := true]
def A073769 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ ((((y * y) - y) / x) + x) + y) (λ (x _y) ↦ x) x 1 1 - 1

end Sequence