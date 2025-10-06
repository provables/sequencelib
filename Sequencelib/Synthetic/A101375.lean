/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A101375 sequence
-/

namespace Sequence

@[OEIS := A101375, offset := 0, maxIndex := 37, derive := true]
def A101375 (x : ℕ) : ℕ :=
  Int.toNat <| x - ((x * x) * loop (λ (x y) ↦ x - y) x x)

end Sequence