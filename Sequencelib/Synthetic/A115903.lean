/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A115903 sequence
-/

namespace Sequence

@[OEIS := A115903, offset := 0, maxIndex := 19, derive := true]
def A115903 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 2 * (3 * (((x / y) + x) + x))) x 1

end Sequence