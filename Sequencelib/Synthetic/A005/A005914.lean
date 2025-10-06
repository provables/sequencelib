/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A005914 sequence
-/

namespace Sequence

@[OEIS := A005914, offset := 0, maxIndex := 100, derive := true]
def A005914 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (_x y) ↦ 2 + (3 * (y * y))) (x + x) 1

end Sequence