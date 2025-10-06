/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A135520 sequence
-/

namespace Sequence

@[OEIS := A135520, offset := 0, maxIndex := 31, derive := true]
def A135520 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y) (λ (x _y) ↦ 2 * (x + x)) x 2 1

end Sequence