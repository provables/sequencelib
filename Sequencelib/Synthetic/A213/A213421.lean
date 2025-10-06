/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A213421 sequence
-/

namespace Sequence

@[OEIS := A213421, offset := 0, maxIndex := 100, derive := true]
def A213421 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ (2 * (x + y)) + y) (λ (x y) ↦ (y - x) + y) x 1 0

end Sequence