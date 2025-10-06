/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A051274 sequence
-/

namespace Sequence

@[OEIS := A051274, offset := 0, maxIndex := 72, derive := true]
def A051274 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (y / 2) - x / 2) x 1

end Sequence