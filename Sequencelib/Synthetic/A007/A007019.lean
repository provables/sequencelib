/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A007019 sequence
-/

namespace Sequence

@[OEIS := A007019, offset := 0, maxIndex := 16, derive := true]
def A007019 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (1 + (y + y)) * (x * y)) x 1

end Sequence