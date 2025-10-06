/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A004975 sequence
-/

namespace Sequence

@[OEIS := A004975, offset := 0, maxIndex := 37, derive := true]
def A004975 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y) ↦ 2 + ((2 + x) * x)) 3 2 - 2) * x) - x

end Sequence