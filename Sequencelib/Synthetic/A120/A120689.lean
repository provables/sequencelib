/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A120689 sequence
-/

namespace Sequence

@[OEIS := A120689, offset := 0, maxIndex := 100, derive := true]
def A120689 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ ((y * y) * y) - y) (λ (_x y) ↦ y + y) x 0 2 / 2

end Sequence