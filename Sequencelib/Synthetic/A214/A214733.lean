/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A214733 sequence
-/

namespace Sequence

@[OEIS := A214733, offset := 0, maxIndex := 100, derive := true]
def A214733 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ y - x) (λ (x _y) ↦ (-((x + x) + x))) x 0 1

end Sequence