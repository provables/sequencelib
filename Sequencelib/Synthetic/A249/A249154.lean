/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A249154 sequence
-/

namespace Sequence

@[OEIS := A249154, offset := 0, maxIndex := 100, derive := true]
def A249154 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ 2 + (x - y)) (λ (_x y) ↦ y / 2) x 0 x * (1 + x)

end Sequence