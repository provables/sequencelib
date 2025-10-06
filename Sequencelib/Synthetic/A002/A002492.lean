/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A002492 sequence
-/

namespace Sequence

@[OEIS := A002492, offset := 0, maxIndex := 39, derive := true]
def A002492 (x : ℕ) : ℕ :=
  Int.toNat <| 2 * (2 * loop (λ (x y) ↦ (y * y) + x) x 0)

end Sequence