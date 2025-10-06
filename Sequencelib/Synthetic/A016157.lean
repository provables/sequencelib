/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A016157 sequence
-/

namespace Sequence

@[OEIS := A016157, offset := 0, maxIndex := 17, derive := true]
def A016157 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ x + x) (2 * y) 1 + (((x * 2) * 2) + x) * 2) x 1

end Sequence