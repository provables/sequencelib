/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A254474 sequence
-/

namespace Sequence

@[OEIS := A254474, offset := 0, maxIndex := 100, derive := true]
def A254474 (x : ℕ) : ℕ :=
  Int.toNat <| (((x * x) - x) * loop (λ (x _y) ↦ 2 + (x + x)) 2 2) + x

end Sequence