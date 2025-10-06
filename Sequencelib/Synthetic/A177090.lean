/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A177090 sequence
-/

namespace Sequence

@[OEIS := A177090, offset := 0, maxIndex := 98, derive := true]
def A177090 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x y) ↦ (2 * ((2 * (x + x)) + x)) + y) 2 x) x 0

end Sequence