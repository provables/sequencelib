/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A273366 sequence
-/

namespace Sequence

@[OEIS := A273366, offset := 0, maxIndex := 100, derive := true]
def A273366 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((2 * (x * y)) + x) + y) (λ (_x _y) ↦ 2) 2 x x

end Sequence