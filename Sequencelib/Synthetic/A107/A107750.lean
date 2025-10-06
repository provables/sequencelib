/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A107750 sequence
-/

namespace Sequence

@[OEIS := A107750, offset := 0, maxIndex := 100, derive := true]
def A107750 (x : ℕ) : ℕ :=
  Int.toNat <| (x - 1) + loop (λ (_x y) ↦ y) (x / 3) 1

end Sequence