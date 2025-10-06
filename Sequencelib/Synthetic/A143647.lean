/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A143647 sequence
-/

namespace Sequence

@[OEIS := A143647, offset := 0, maxIndex := 20, derive := true]
def A143647 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * (x + x)) + y) (λ (x y) ↦ 2 * (((x + y) + y) + y)) x 1 1

end Sequence