/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A320469 sequence
-/

namespace Sequence

@[OEIS := A320469, offset := 0, maxIndex := 24, derive := true]
def A320469 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x + y) + y) (λ (x y) ↦ 2 * (((x + x) + x) + y)) x 1 0

end Sequence