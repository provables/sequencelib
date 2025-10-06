/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A301755 sequence
-/

namespace Sequence

@[OEIS := A301755, offset := 0, maxIndex := 86, derive := true]
def A301755 (x : ℕ) : ℕ :=
  Int.toNat <| (((1 + (2 * (x % 3))) * 2) + 1) / loop (λ (x y) ↦ x * y) x 1

end Sequence