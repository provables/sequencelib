/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A067686 sequence
-/

namespace Sequence

@[OEIS := A067686, offset := 0, maxIndex := 9, derive := true]
def A067686 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (x _y) ↦ ((2 + (2 + (2 + x))) * x) + x) x 1 + 1) + 2) + 2) + 2

end Sequence