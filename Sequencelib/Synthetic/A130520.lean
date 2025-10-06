/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A130520 sequence
-/

namespace Sequence

@[OEIS := A130520, offset := 0, maxIndex := 62, derive := true]
def A130520 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (y / (1 + 4)) + x) x 0

end Sequence