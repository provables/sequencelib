/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A098305 sequence
-/

namespace Sequence

@[OEIS := A098305, offset := 0, maxIndex := 23, derive := true]
def A098305 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop2 (λ (_x y) ↦ y) (λ (x y) ↦ x + y) ((x + x) * 2) 2 1 / 3) + 1) / 3

end Sequence