/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A130489 sequence
-/

namespace Sequence

@[OEIS := A130489, offset := 0, maxIndex := 100, derive := true]
def A130489 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (y % loop (λ (x _y) ↦ 1 + (x + x)) 2 2) + x) x 0

end Sequence