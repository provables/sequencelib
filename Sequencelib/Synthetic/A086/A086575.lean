/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A086575 sequence
-/

namespace Sequence

@[OEIS := A086575, offset := 0, maxIndex := 20, derive := true]
def A086575 (x : ℕ) : ℕ :=
  Int.toNat <| 2 * (loop (λ (x _y) ↦ 2 * ((2 * (x + x)) + x)) x 2 - 2)

end Sequence