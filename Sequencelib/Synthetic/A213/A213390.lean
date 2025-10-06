/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A213390 sequence
-/

namespace Sequence

@[OEIS := A213390, offset := 0, maxIndex := 38, derive := true]
def A213390 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + loop (λ (x y) ↦ (y / 2) + x) x x) * ((x + x) + x)) + 1

end Sequence