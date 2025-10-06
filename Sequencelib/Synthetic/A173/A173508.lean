/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A173508 sequence
-/

namespace Sequence

@[OEIS := A173508, offset := 0, maxIndex := 42, derive := true]
def A173508 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y / 2) (λ (x y) ↦ x + y) x 1 2

end Sequence