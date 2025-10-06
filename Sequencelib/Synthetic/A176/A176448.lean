/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A176448 sequence
-/

namespace Sequence

@[OEIS := A176448, offset := 0, maxIndex := 29, derive := true]
def A176448 (x : ℕ) : ℕ :=
  Int.toNat <| 2 + loop (λ (x _y) ↦ 2 * (2 + x)) x 3

end Sequence