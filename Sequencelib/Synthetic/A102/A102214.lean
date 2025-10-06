/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A102214 sequence
-/

namespace Sequence

@[OEIS := A102214, offset := 0, maxIndex := 100, derive := true]
def A102214 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 1 + ((y / 2) + x)) ((x + x) + x) 1

end Sequence