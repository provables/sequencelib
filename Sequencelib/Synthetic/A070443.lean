/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070443 sequence
-/

namespace Sequence

@[OEIS := A070443, offset := 0, maxIndex := 100, derive := true]
def A070443 (x : ℕ) : ℕ :=
  Int.toNat <| (x * x) % (1 + loop (λ (x _y) ↦ 2 * (2 + x)) 2 2)

end Sequence