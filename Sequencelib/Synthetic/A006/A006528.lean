/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A006528 sequence
-/

namespace Sequence

@[OEIS := A006528, offset := 0, maxIndex := 50, derive := true]
def A006528 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x + y) (x * x) x / 2

end Sequence