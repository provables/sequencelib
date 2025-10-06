/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A344920 sequence
-/

namespace Sequence

@[OEIS := A344920, offset := 0, maxIndex := 31, derive := true]
def A344920 (x : ℕ) : ℤ :=
  loop (λ (x _y) ↦ 1 + (2 * ((x % 2) + x))) x 0 * loop (λ (x _y) ↦ (-x)) x 1

end Sequence