/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A038154 sequence
-/

namespace Sequence

@[OEIS := A038154, offset := 0, maxIndex := 21, derive := true]
def A038154 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (x * y) + y) x 0 - x

end Sequence