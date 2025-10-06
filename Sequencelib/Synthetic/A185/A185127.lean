/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A185127 sequence
-/

namespace Sequence

@[OEIS := A185127, offset := 0, maxIndex := 18, derive := true]
def A185127 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x _y) ↦ 3 * (1 + x)) 2 x + x) (1 + x) 0 - 1

end Sequence