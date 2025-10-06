/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A218731 sequence
-/

namespace Sequence

@[OEIS := A218731, offset := 0, maxIndex := 100, derive := true]
def A218731 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ 1 + ((loop (λ (x y) ↦ (x * x) + y) 2 2 * x) + x)) x 0

end Sequence