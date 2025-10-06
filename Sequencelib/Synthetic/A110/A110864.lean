/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A110864 sequence
-/

namespace Sequence

@[OEIS := A110864, offset := 0, maxIndex := 5, derive := true]
def A110864 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (x % 2) + y) (loop (λ (x y) ↦ x * y) (x - 1) 1) 0

end Sequence