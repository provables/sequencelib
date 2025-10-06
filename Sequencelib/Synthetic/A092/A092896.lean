/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A092896 sequence
-/

namespace Sequence

@[OEIS := A092896, offset := 0, maxIndex := 100, derive := true]
def A092896 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ 1 + (y * y)) (λ (_x y) ↦ y + y) (x - 1) 1 2

end Sequence