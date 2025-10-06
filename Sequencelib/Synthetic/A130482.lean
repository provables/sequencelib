/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A130482 sequence
-/

namespace Sequence

@[OEIS := A130482, offset := 0, maxIndex := 100, derive := true]
def A130482 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (y % 4) + x) x 0

end Sequence