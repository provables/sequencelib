/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A229144 sequence
-/

namespace Sequence

@[OEIS := A229144, offset := 0, maxIndex := 78, derive := true]
def A229144 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (y % 3) + x) (λ (x _y) ↦ x) x 1 1 - 1

end Sequence