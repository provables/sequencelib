/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A082446 sequence
-/

namespace Sequence

@[OEIS := A082446, offset := 0, maxIndex := 90, derive := true]
def A082446 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ (1 - ((x / 2) % 3)) + (x + 1) / 2) x x + x) % 2

end Sequence