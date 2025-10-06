/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A210728 sequence
-/

namespace Sequence

@[OEIS := A210728, offset := 0, maxIndex := 100, derive := true]
def A210728 (x : ℕ) : ℕ :=
  Int.toNat <| ((2 * loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ 2 + x) x 1 1) - 1) - x

end Sequence