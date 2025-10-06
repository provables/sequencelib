/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A273745 sequence
-/

namespace Sequence

@[OEIS := A273745, offset := 0, maxIndex := 100, derive := true]
def A273745 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((((((((loop (λ (x _y) ↦ 2 + (2 / x)) x 1 + 2) / 2) + 2) + x) + 2) + x) + x) + 2) + x) + x) + x) + x) + x

end Sequence