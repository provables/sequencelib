/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A128467 sequence
-/

namespace Sequence

@[OEIS := A128467, offset := 0, maxIndex := 48, derive := true]
def A128467 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (y * (((y * 2) + 1) * x)) + 1) 2 x

end Sequence