/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A314161 sequence
-/

namespace Sequence

@[OEIS := A314161, offset := 0, maxIndex := 49, derive := true]
def A314161 (x : ℕ) : ℕ :=
  Int.toNat <| ((((loop (λ (x y) ↦ (((x / 2) % 2) + y) / 2) x 1 + x) + x) + x) + x) + x

end Sequence