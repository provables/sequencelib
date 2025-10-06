/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A301291 sequence
-/

namespace Sequence

@[OEIS := A301291, offset := 0, maxIndex := 100, derive := true]
def A301291 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ 1 + (y - (x % 2))) x 2 / 2) + (x + x) * 2

end Sequence