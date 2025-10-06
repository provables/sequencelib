/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A002999 sequence
-/

namespace Sequence

@[OEIS := A002999, offset := 0, maxIndex := 100, derive := true]
def A002999 (x : ℕ) : ℕ :=
  Int.toNat <| (((((((loop (λ (x _y) ↦ (x - 1) + x) x x + 1) * loop (λ (_x y) ↦ y) x 1) + 1) / 2) + 1) + x) / 2) + x

end Sequence