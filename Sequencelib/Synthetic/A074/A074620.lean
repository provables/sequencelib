/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A074620 sequence
-/

namespace Sequence

@[OEIS := A074620, offset := 0, maxIndex := 19, derive := true]
def A074620 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * ((x + x) + x)) + y) (λ (_x y) ↦ 2 * ((y + y) * 2)) x 2 2

end Sequence