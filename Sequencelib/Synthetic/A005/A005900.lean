/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A005900 sequence
-/

namespace Sequence

@[OEIS := A005900, offset := 0, maxIndex := 100, derive := true]
def A005900 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (2 * ((y - 1) * y)) + x) x x

end Sequence