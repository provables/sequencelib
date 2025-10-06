/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A152749 sequence
-/

namespace Sequence

@[OEIS := A152749, offset := 0, maxIndex := 100, derive := true]
def A152749 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (((y % 2) * y) + x) + y) x 0

end Sequence