/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017245 sequence
-/

namespace Sequence

@[OEIS := A017245, offset := 0, maxIndex := 53, derive := true]
def A017245 (x : ℕ) : ℕ :=
  Int.toNat <| 2 + loop (λ (x y) ↦ ((x + x) + x) + y) 2 x

end Sequence