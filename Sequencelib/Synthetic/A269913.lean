/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A269913 sequence
-/

namespace Sequence

@[OEIS := A269913, offset := 0, maxIndex := 100, derive := true]
def A269913 (x : ℕ) : ℤ :=
  (((((2 + x) * loop (λ (x _y) ↦ (-x)) x x) + x) * 2) + 2) * 2

end Sequence