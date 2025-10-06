/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A034584 sequence
-/

namespace Sequence

@[OEIS := A034584, offset := 0, maxIndex := 63, derive := true]
def A034584 (x : ℕ) : ℕ :=
  Int.toNat <| (comprN (λ (x : ℤ) ↦ (((((x - 1) / (2 + 2)) + x) / 2) % 2)) x - x) / 2

end Sequence