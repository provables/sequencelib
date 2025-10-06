/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A016758 sequence
-/

namespace Sequence

@[OEIS := A016758, offset := 0, maxIndex := 100, derive := true]
def A016758 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * (x * y)) + x) (λ (_x y) ↦ y) (2 * 3) 1 x

end Sequence