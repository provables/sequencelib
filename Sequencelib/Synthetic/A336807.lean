/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A336807 sequence
-/

namespace Sequence

@[OEIS := A336807, offset := 0, maxIndex := 15, derive := true]
def A336807 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 1 + (2 * (2 * ((x * y) * y)))) x 1

end Sequence