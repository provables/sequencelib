/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A210675 sequence
-/

namespace Sequence

@[OEIS := A210675, offset := 0, maxIndex := 36, derive := true]
def A210675 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y) ↦ 1 + (x + y)) (λ (x _y) ↦ 2 + (x + 2)) x 2 1 - 2) - x

end Sequence