/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A259661 sequence
-/

namespace Sequence

@[OEIS := A259661, offset := 0, maxIndex := 100, derive := true]
def A259661 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (1 - ((x / 2) % 2)) + (((x * 2) * 2) + x) * 2) x 1

end Sequence