/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A300402 sequence
-/

namespace Sequence

@[OEIS := A300402, offset := 0, maxIndex := 86, derive := true]
def A300402 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y) (λ (_x _y) ↦ 2) (x / 2) 0 1 + 1

end Sequence