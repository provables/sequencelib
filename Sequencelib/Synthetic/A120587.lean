/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A120587 sequence
-/

namespace Sequence

@[OEIS := A120587, offset := 0, maxIndex := 5, derive := true]
def A120587 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ (((y - 1) / 2) + x) * x) x 1 * 2) - 1

end Sequence