/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A340648 sequence
-/

namespace Sequence

@[OEIS := A340648, offset := 0, maxIndex := 52, derive := true]
def A340648 (x : ℕ) : ℕ :=
  Int.toNat <| (x * x) + loop (λ (x y) ↦ x - y) x 1 / 2

end Sequence