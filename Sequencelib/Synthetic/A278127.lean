/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A278127 sequence
-/

namespace Sequence

@[OEIS := A278127, offset := 0, maxIndex := 45, derive := true]
def A278127 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 1 + ((2 + 3) * ((x + x) + y))) 2 x - x

end Sequence