/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A298038 sequence
-/

namespace Sequence

@[OEIS := A298038, offset := 0, maxIndex := 54, derive := true]
def A298038 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (2 + (2 * ((x / 2) % 2))) * (3 * y)) x 1

end Sequence