/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A094014 sequence
-/

namespace Sequence

@[OEIS := A094014, offset := 0, maxIndex := 100, derive := true]
def A094014 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ (x + x) * ((y % 2) - 2)) x 1

end Sequence