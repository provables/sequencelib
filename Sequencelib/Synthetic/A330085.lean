/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A330085 sequence
-/

namespace Sequence

@[OEIS := A330085, offset := 0, maxIndex := 19, derive := true]
def A330085 (x : ℕ) : ℕ :=
  Int.toNat <| (((((((((((((((1 + loop (λ (x y) ↦ x - y) x 2) / 4) + 1) + x) / 2) + 1) + x) / 2) + 1) + x) / 2) + x) + x) / 2) + x) + 2

end Sequence