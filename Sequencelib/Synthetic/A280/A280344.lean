/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A280344 sequence
-/

namespace Sequence

@[OEIS := A280344, offset := 0, maxIndex := 100, derive := true]
def A280344 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (_x y) ↦ (1 + y) * (2 + y)) (x + x) 0

end Sequence