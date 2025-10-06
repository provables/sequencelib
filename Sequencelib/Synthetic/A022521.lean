/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A022521 sequence
-/

namespace Sequence

@[OEIS := A022521, offset := 0, maxIndex := 100, derive := true]
def A022521 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + ((1 + 4) * loop (λ (x _y) ↦ (x * x) + x) 2 x)

end Sequence