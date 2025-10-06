/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A083424 sequence
-/

namespace Sequence

@[OEIS := A083424, offset := 0, maxIndex := 23, derive := true]
def A083424 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ 2 * (x + y)) (λ (x _y) ↦ 2 * (x + x)) x 2 1 / 2

end Sequence