/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A134297 sequence
-/

namespace Sequence

@[OEIS := A134297, offset := 0, maxIndex := 44, derive := true]
def A134297 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x y) ↦ x + y) (2 + x) 2) 2 2 * x

end Sequence