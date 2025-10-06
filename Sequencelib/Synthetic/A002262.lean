/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A002262 sequence
-/

namespace Sequence

@[OEIS := A002262, offset := 0, maxIndex := 100, derive := true]
def A002262 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ if (y - x) ≤ 0 then x - y else x) x x

end Sequence