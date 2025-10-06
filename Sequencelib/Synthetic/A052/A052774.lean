/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A052774 sequence
-/

namespace Sequence

@[OEIS := A052774, offset := 0, maxIndex := 100, derive := true]
def A052774 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((2 * (x + x)) * y) + x) (λ (_x y) ↦ y) (x - 1) 1 x

end Sequence