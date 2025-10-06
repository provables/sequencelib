/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A176424 sequence
-/

namespace Sequence

@[OEIS := A176424, offset := 0, maxIndex := 4, derive := true]
def A176424 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 2 + ((loop (λ (x y) ↦ y - x) x 2 + 2) * y)) x 1

end Sequence