/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A189996 sequence
-/

namespace Sequence

@[OEIS := A189996, offset := 0, maxIndex := 100, derive := true]
def A189996 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ ((x - 1) / (2 * 4)) % 2) (((x / 2) % 4) * x) 2

end Sequence