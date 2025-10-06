/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A060816 sequence
-/

namespace Sequence

@[OEIS := A060816, offset := 0, maxIndex := 100, derive := true]
def A060816 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ 1 + ((x * y) + x)) (λ (_x _y) ↦ 2) x 1 0

end Sequence