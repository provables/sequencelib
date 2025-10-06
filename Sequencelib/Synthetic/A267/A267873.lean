/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A267873 sequence
-/

namespace Sequence

@[OEIS := A267873, offset := 0, maxIndex := 100, derive := true]
def A267873 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (_x y) ↦ y - (2 / y)) x 0 + 1) + x

end Sequence