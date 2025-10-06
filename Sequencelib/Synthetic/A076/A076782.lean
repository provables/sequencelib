/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A076782 sequence
-/

namespace Sequence

@[OEIS := A076782, offset := 0, maxIndex := 9, derive := true]
def A076782 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ 2 * ((2 * (x + x)) + x)) (x * x) 1

end Sequence