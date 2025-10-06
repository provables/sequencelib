/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A273743 sequence
-/

namespace Sequence

@[OEIS := A273743, offset := 0, maxIndex := 100, derive := true]
def A273743 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x * x) 1 (1 + (x + x)) - loop (λ (_x _y) ↦ 0) (x - 1) x

end Sequence