/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A072615 sequence
-/

namespace Sequence

@[OEIS := A072615, offset := 0, maxIndex := 11, derive := true]
def A072615 (x : ℕ) : ℤ :=
  (loop2 (λ (x y) ↦ (2 * (x + x)) - y) (λ (x _y) ↦ x) x 1 2 * x) + x

end Sequence