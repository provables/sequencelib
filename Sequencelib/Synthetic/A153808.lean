/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A153808 sequence
-/

namespace Sequence

@[OEIS := A153808, offset := 0, maxIndex := 37, derive := true]
def A153808 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (2 - x) * y) 4 x * x

end Sequence