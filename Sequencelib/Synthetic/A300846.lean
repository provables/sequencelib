/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A300846 sequence
-/

namespace Sequence

@[OEIS := A300846, offset := 0, maxIndex := 30, derive := true]
def A300846 (x : ℕ) : ℕ :=
  Int.toNat <| ((x + x) + x) * loop (λ (x _y) ↦ x * x) 1 ((x * x) - x)

end Sequence