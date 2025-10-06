/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A163604 sequence
-/

namespace Sequence

@[OEIS := A163604, offset := 0, maxIndex := 100, derive := true]
def A163604 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * ((x + x) + x)) - y) (λ (x y) ↦ 2 * (x + y)) x 3 2

end Sequence