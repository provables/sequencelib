/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A006495 sequence
-/

namespace Sequence

@[OEIS := A006495, offset := 0, maxIndex := 100, derive := true]
def A006495 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ (x + y) + y) (λ (x y) ↦ (y - x) - x) x 1 0

end Sequence