/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A016149 sequence
-/

namespace Sequence

@[OEIS := A016149, offset := 0, maxIndex := 50, derive := true]
def A016149 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ x + x) (2 * y) 1 + 2 * ((x + x) + x)) x 1

end Sequence