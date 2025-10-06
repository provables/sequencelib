/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A155559 sequence
-/

namespace Sequence

@[OEIS := A155559, offset := 0, maxIndex := 33, derive := true]
def A155559 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y) (λ (_x y) ↦ y + y) x 0 2

end Sequence