/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001095 sequence
-/

namespace Sequence

@[OEIS := A001095, offset := 0, maxIndex := 31, derive := true]
def A001095 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ (x - y) * x) 2 (x - 2) * x) + x

end Sequence