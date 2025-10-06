/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A067405 sequence
-/

namespace Sequence

@[OEIS := A067405, offset := 0, maxIndex := 18, derive := true]
def A067405 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((2 + (2 % y)) * x) + x) (x + x) 1

end Sequence