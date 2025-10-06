/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A245339 sequence
-/

namespace Sequence

@[OEIS := A245339, offset := 0, maxIndex := 67, derive := true]
def A245339 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x - y) (x / (2 + (2 * 4))) x

end Sequence