/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A317324 sequence
-/

namespace Sequence

@[OEIS := A317324, offset := 0, maxIndex := 100, derive := true]
def A317324 (x : ℕ) : ℕ :=
  Int.toNat <| if (x % 2) ≤ 0 then loop (λ (x y) ↦ (2 + y) * x) 2 x else x

end Sequence