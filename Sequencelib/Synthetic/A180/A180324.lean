/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A180324 sequence
-/

namespace Sequence

@[OEIS := A180324, offset := 0, maxIndex := 37, derive := true]
def A180324 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + (x + x)) * loop (λ (x y) ↦ x + (y * y)) x 0

end Sequence