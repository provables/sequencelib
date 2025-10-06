/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A006484 sequence
-/

namespace Sequence

@[OEIS := A006484, offset := 0, maxIndex := 39, derive := true]
def A006484 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ x + y) ((x - 1) * x) 0 / 3) + x

end Sequence