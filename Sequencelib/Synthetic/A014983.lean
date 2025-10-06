/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A014983 sequence
-/

namespace Sequence

@[OEIS := A014983, offset := 0, maxIndex := 100, derive := true]
def A014983 (x : ℕ) : ℤ :=
  loop (λ (x _y) ↦ 1 - ((x + x) + x)) x 0

end Sequence