/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A269027 sequence
-/

namespace Sequence

@[OEIS := A269027, offset := 0, maxIndex := 100, derive := true]
def A269027 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y) ↦ (x + y) / 2) (λ (x _y) ↦ x) x 0 x + x) % 2

end Sequence