/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A138129 sequence
-/

namespace Sequence

@[OEIS := A138129, offset := 0, maxIndex := 39, derive := true]
def A138129 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x y) ↦ (2 + y) * x) 2 x) 3 x + x

end Sequence