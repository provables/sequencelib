/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A132357 sequence
-/

namespace Sequence

@[OEIS := A132357, offset := 0, maxIndex := 100, derive := true]
def A132357 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ 1 + ((x + x) + x)) x 1 + ((1 + x) / 3) % 2

end Sequence