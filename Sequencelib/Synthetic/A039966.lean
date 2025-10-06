/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A039966 sequence
-/

namespace Sequence

@[OEIS := A039966, offset := 0, maxIndex := 100, derive := true]
def A039966 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + loop (λ (x y) ↦ 2 * ((x - (x / y)) + x)) x 2) / 3) % 2

end Sequence