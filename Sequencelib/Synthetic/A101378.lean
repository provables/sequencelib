/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A101378 sequence
-/

namespace Sequence

@[OEIS := A101378, offset := 0, maxIndex := 33, derive := true]
def A101378 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y) ↦ x * x) 2 x + x) / 2) * x

end Sequence