/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A094013 sequence
-/

namespace Sequence

@[OEIS := A094013, offset := 0, maxIndex := 100, derive := true]
def A094013 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y) (λ (x y) ↦ 2 * ((x + y) * 2)) x 1 0

end Sequence