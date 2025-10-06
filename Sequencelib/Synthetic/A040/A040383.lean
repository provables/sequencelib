/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A040383 sequence
-/

namespace Sequence

@[OEIS := A040383, offset := 0, maxIndex := 62, derive := true]
def A040383 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y) ↦ (2 + y) / x) (λ (_x _y) ↦ 2) x 2 1 * ((2 * 2) + 1)) * 2

end Sequence