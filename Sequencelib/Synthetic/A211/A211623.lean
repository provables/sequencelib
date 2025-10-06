/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A211623 sequence
-/

namespace Sequence

@[OEIS := A211623, offset := 0, maxIndex := 100, derive := true]
def A211623 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (_x y) ↦ y * y) ((x - 1) + x) x + 1) + x) / 2) * 2

end Sequence