/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A089926 sequence
-/

namespace Sequence

@[OEIS := A089926, offset := 0, maxIndex := 17, derive := true]
def A089926 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (3 * ((2 + (2 % x)) * x)) + y) (λ (x _y) ↦ x) x 1 0

end Sequence