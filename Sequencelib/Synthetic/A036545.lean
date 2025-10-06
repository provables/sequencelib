/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A036545 sequence
-/

namespace Sequence

@[OEIS := A036545, offset := 0, maxIndex := 100, derive := true]
def A036545 (x : ℕ) : ℕ :=
  Int.toNat <| (2 * loop (λ (x _y) ↦ 3 * (2 + x)) x 1) - 1

end Sequence