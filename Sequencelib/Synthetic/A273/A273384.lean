/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A273384 sequence
-/

namespace Sequence

@[OEIS := A273384, offset := 0, maxIndex := 100, derive := true]
def A273384 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y) ↦ ((2 % x) + y) + y) x 1 * 2) * x) + 1

end Sequence