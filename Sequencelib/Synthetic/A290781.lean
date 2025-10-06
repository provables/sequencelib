/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A290781 sequence
-/

namespace Sequence

@[OEIS := A290781, offset := 0, maxIndex := 51, derive := true]
def A290781 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ 2 * (2 * (y + x))) (λ (_x y) ↦ y) 2 1 x - 1

end Sequence