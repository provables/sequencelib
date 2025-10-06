/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A332234 sequence
-/

namespace Sequence

@[OEIS := A332234, offset := 0, maxIndex := 3, derive := true]
def A332234 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 1 + ((2 + x) * y)) x (2 - (x % 2))

end Sequence