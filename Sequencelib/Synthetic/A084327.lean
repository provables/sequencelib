/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A084327 sequence
-/

namespace Sequence

@[OEIS := A084327, offset := 0, maxIndex := 11, derive := true]
def A084327 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ (2 * (2 * (x + x))) + y) (λ (x y) ↦ y - x) x 0 1

end Sequence