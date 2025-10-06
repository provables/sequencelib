/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A004961 sequence
-/

namespace Sequence

@[OEIS := A004961, offset := 0, maxIndex := 43, derive := true]
def A004961 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y) ↦ 2 * ((x + x) + x)) 2 x - (x / 3) / 3) + 1) / 2

end Sequence