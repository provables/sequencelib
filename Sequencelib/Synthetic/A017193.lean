/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017193 sequence
-/

namespace Sequence

@[OEIS := A017193, offset := 0, maxIndex := 11, derive := true]
def A017193 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (x * x) * x) 2 (2 + loop (λ (x _y) ↦ (x + x) + x) 2 x)

end Sequence