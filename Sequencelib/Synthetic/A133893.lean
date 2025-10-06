/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A133893 sequence
-/

namespace Sequence

@[OEIS := A133893, offset := 0, maxIndex := 60, derive := true]
def A133893 (x : ℕ) : ℕ :=
  Int.toNat <| comprN (λ (x : ℤ) ↦ (2 - ((x / (1 + 2)) % (1 + 2)))) x

end Sequence