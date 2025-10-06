/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A334670 sequence
-/

namespace Sequence

@[OEIS := A334670, offset := 0, maxIndex := 100, derive := true]
def A334670 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ (2 * (x * y)) - x) y 1 + (((x * y) * 2) + x)) x 0

end Sequence