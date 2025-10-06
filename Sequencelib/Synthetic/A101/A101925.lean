/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A101925 sequence
-/

namespace Sequence

@[OEIS := A101925, offset := 0, maxIndex := 65, derive := true]
def A101925 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x + y) (λ (_x y) ↦ y / 2) x 1 x

end Sequence