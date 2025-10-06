/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A265284 sequence
-/

namespace Sequence

@[OEIS := A265284, offset := 0, maxIndex := 100, derive := true]
def A265284 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 2 + ((x - (x % 2)) + y)) x 1 + x

end Sequence