/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A182305 sequence
-/

namespace Sequence

@[OEIS := A182305, offset := 0, maxIndex := 43, derive := true]
def A182305 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ ((x / 2) / 2) + x) x 4

end Sequence