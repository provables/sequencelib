/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A086952 sequence
-/

namespace Sequence

@[OEIS := A086952, offset := 0, maxIndex := 24, derive := true]
def A086952 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x * y) (λ (_x _y) ↦ 4) x x x

end Sequence