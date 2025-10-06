/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A129530 sequence
-/

namespace Sequence

@[OEIS := A129530, offset := 0, maxIndex := 100, derive := true]
def A129530 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ (x + x) + x) (x - 1) (x - 1) * x) / 2

end Sequence