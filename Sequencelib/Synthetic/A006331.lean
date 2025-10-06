/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A006331 sequence
-/

namespace Sequence

@[OEIS := A006331, offset := 0, maxIndex := 100, derive := true]
def A006331 (x : ℕ) : ℕ :=
  Int.toNat <| 2 * loop (λ (x y) ↦ (y * y) + x) x 0

end Sequence