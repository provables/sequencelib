/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A134953 sequence
-/

namespace Sequence

@[OEIS := A134953, offset := 0, maxIndex := 10, derive := true]
def A134953 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (((y * y) - x) / 3) + 2) x x

end Sequence