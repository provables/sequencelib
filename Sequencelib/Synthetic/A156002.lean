/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A156002 sequence
-/

namespace Sequence

@[OEIS := A156002, offset := 0, maxIndex := 97, derive := true]
def A156002 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y) ↦ ((2 * ((x + x) + x)) + x) + y) x 0 + 1) * 2) / 3

end Sequence