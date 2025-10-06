/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A345339 sequence
-/

namespace Sequence

@[OEIS := A345339, offset := 0, maxIndex := 55, derive := true]
def A345339 (x : ℕ) : ℕ :=
  Int.toNat <| 2 * loop (λ (x y) ↦ (2 * (x + y)) + x) 2 x

end Sequence