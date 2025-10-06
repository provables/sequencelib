/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A338795 sequence
-/

namespace Sequence

@[OEIS := A338795, offset := 1, maxIndex := 33, derive := true]
def A338795 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (1 + x) * ((x + x) + y)) (λ (_x _y) ↦ 1) 2 x x

end Sequence