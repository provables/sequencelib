/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A293023 sequence
-/

namespace Sequence

@[OEIS := A293023, offset := 0, maxIndex := 5, derive := true]
def A293023 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y) ↦ (x * x) + y) (x - 2) 1 * x) / 3) + x

end Sequence