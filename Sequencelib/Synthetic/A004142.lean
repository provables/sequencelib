/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A004142 sequence
-/

namespace Sequence

@[OEIS := A004142, offset := 0, maxIndex := 22, derive := true]
def A004142 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((x + x) + x) + y) (λ (_x y) ↦ y + y) x 0 x

end Sequence