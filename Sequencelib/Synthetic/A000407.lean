/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000407 sequence
-/

namespace Sequence

@[OEIS := A000407, offset := 0, maxIndex := 96, derive := true]
def A000407 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 2 * ((2 * (x * y)) + x)) x 1

end Sequence