/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A011886 sequence
-/

namespace Sequence

@[OEIS := A011886, offset := 0, maxIndex := 100, derive := true]
def A011886 (x : ℕ) : ℕ :=
  Int.toNat <| ((2 - x) * loop (λ (x y) ↦ x - y) x x) / 2

end Sequence