/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A273790 sequence
-/

namespace Sequence

@[OEIS := A273790, offset := 0, maxIndex := 100, derive := true]
def A273790 (x : ℕ) : ℕ :=
  Int.toNat <| ((((loop (λ (x y) ↦ (((1 % x) + y) * y) + x) x 1 * 2) - 1) * 2) - 1) + x

end Sequence