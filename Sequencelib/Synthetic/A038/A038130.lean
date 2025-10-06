/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A038130 sequence
-/

namespace Sequence

@[OEIS := A038130, offset := 0, maxIndex := 55, derive := true]
def A038130 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ (((x - 1) / 4) + y) / 2) x 1 / 2) + ((x + x) + x) * 2

end Sequence