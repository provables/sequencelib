/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A214972 sequence
-/

namespace Sequence

@[OEIS := A214972, offset := 0, maxIndex := 100, derive := true]
def A214972 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ ((loop (λ (_x y) ↦ (y / 3)) x x + x) - 1) / 2) x x + x

end Sequence