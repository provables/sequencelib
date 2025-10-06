/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A026337 sequence
-/

namespace Sequence

@[OEIS := A026337, offset := 0, maxIndex := 18, derive := true]
def A026337 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ (y * y) - y) (λ (_x y) ↦ y + y) (x + x) 1 2 / 2

end Sequence