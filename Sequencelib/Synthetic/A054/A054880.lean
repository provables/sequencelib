/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A054880 sequence
-/

namespace Sequence

@[OEIS := A054880, offset := 0, maxIndex := 100, derive := true]
def A054880 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((x + x) + x) + y) (x + x) 0 + x

end Sequence