/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A347289 sequence
-/

namespace Sequence

@[OEIS := A347289, offset := 0, maxIndex := 11, derive := true]
def A347289 (x : ℕ) : ℕ :=
  Int.toNat <| (2 + x) * loop (λ (x y) ↦ (x * x) * y) x 1

end Sequence