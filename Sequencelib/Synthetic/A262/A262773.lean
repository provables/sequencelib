/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A262773 sequence
-/

namespace Sequence

@[OEIS := A262773, offset := 0, maxIndex := 62, derive := true]
def A262773 (x : ℕ) : ℕ :=
  Int.toNat <| (((comprN (λ (_x) ↦ 0) (x - 1) / 2) / 2) + x) + x

end Sequence