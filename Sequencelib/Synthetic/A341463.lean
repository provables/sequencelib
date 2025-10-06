/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A341463 sequence
-/

namespace Sequence

@[OEIS := A341463, offset := 0, maxIndex := 29, derive := true]
def A341463 (x : ℕ) : ℤ :=
  (x % 2) - loop (λ (x _y) ↦ 2 - ((x + x) + x)) x 1

end Sequence