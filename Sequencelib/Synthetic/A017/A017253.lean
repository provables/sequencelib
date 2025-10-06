/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017253 sequence
-/

namespace Sequence

@[OEIS := A017253, offset := 0, maxIndex := 11, derive := true]
def A017253 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (x * x) * x) 2 (2 + loop (λ (x y) ↦ ((x + x) + x) + y) 2 x)

end Sequence