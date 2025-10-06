/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A084990 sequence
-/

namespace Sequence

@[OEIS := A084990, offset := 0, maxIndex := 100, derive := true]
def A084990 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((y * y) + x) + y) x 0 - x

end Sequence