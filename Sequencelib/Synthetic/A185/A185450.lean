/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A185450 sequence
-/

namespace Sequence

@[OEIS := A185450, offset := 0, maxIndex := 6, derive := true]
def A185450 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y) ↦ (loop (λ (x y) ↦ x - y) (x / 2) x + x) + 1) (x + 1) 1 + x) + 1) + (x + 1)

end Sequence