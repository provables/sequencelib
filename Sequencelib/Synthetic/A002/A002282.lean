/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A002282 sequence
-/

namespace Sequence

@[OEIS := A002282, offset := 0, maxIndex := 100, derive := true]
def A002282 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ 2 * ((2 * (2 + (x + x))) + x)) x 0

end Sequence