/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A313773 sequence
-/

namespace Sequence

@[OEIS := A313773, offset := 0, maxIndex := 49, derive := true]
def A313773 (x : ℕ) : ℕ :=
  Int.toNat <| (((((((((loop (λ (x y) ↦ (y - x) / 2) (x + x) 1 + x) + x) + x) * 2) + 1) + x) + x) / 3) + x) + x

end Sequence