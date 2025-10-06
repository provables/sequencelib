/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A179042 sequence
-/

namespace Sequence

@[OEIS := A179042, offset := 0, maxIndex := 36, derive := true]
def A179042 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + (loop2 (λ (_x y) ↦ y) (λ (x y) ↦ x + y) x 1 2 / 2)) + x) / 2

end Sequence