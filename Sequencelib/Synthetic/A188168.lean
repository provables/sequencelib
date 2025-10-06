/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A188168 sequence
-/

namespace Sequence

@[OEIS := A188168, offset := 0, maxIndex := 22, derive := true]
def A188168 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y) (λ (x y) ↦ (1 + 4) * (x + y)) x 1 1

end Sequence