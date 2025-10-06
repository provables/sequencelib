/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A305266 sequence
-/

namespace Sequence

@[OEIS := A305266, offset := 0, maxIndex := 31, derive := true]
def A305266 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + (2 * loop (λ (x _y) ↦ 2 * (2 + x)) x 3)) + loop (λ (x _y) ↦ (2 + x) * x) 2 2

end Sequence