/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A094200 sequence
-/

namespace Sequence

@[OEIS := A094200, offset := 0, maxIndex := 28, derive := true]
def A094200 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ (1 + x) * (x + y)) 2 (x + x) - 1) - 2

end Sequence