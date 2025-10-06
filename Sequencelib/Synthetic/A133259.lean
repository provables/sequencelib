/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A133259 sequence
-/

namespace Sequence

@[OEIS := A133259, offset := 0, maxIndex := 71, derive := true]
def A133259 (x : ℕ) : ℕ :=
  Int.toNat <| ((((1 - loop (λ (x y) ↦ y - x) x x) % 3) * 2) - 1) + x

end Sequence