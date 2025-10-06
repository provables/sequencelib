/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A198473 sequence
-/

namespace Sequence

@[OEIS := A198473, offset := 0, maxIndex := 64, derive := true]
def A198473 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ (y - x) / 3) (x % 2) x + x

end Sequence