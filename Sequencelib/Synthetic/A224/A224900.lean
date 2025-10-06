/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A224900 sequence
-/

namespace Sequence

@[OEIS := A224900, offset := 0, maxIndex := 14, derive := true]
def A224900 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (1 + y) * (((y * x) + x) * y)) x 1

end Sequence