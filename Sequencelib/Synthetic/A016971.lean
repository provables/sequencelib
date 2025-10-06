/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A016971 sequence
-/

namespace Sequence

@[OEIS := A016971, offset := 0, maxIndex := 24, derive := true]
def A016971 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (x * x) * x) 1 (loop (λ (x y) ↦ ((1 + y) * x) + y) 2 x)

end Sequence