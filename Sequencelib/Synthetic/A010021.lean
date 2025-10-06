/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010021 sequence
-/

namespace Sequence

@[OEIS := A010021, offset := 0, maxIndex := 100, derive := true]
def A010021 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (_x y) ↦ 2 + (2 * (y * y))) (2 * (x + x)) 1

end Sequence