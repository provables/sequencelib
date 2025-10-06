/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A168090 sequence
-/

namespace Sequence

@[OEIS := A168090, offset := 0, maxIndex := 100, derive := true]
def A168090 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop2 (λ (_x y) ↦ y + y) (λ (x _y) ↦ x) x 1 0) 1 (x - (x / 3))

end Sequence