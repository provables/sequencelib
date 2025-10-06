/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A134057 sequence
-/

namespace Sequence

@[OEIS := A134057, offset := 0, maxIndex := 100, derive := true]
def A134057 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ (y * y) - y) (λ (_x y) ↦ (y + y) + 1) x 0 1 / 2

end Sequence