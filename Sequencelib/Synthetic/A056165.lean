/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A056165 sequence
-/

namespace Sequence

@[OEIS := A056165, offset := 0, maxIndex := 3, derive := true]
def A056165 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (((x * x) / 2) * x) + y) (λ (_x _y) ↦ 1) x 1 x + x

end Sequence