/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A133882 sequence
-/

namespace Sequence

@[OEIS := A133882, offset := 0, maxIndex := 100, derive := true]
def A133882 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + loop (λ (x y) ↦ x + y) x x) % 4

end Sequence