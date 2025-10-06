/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A262302 sequence
-/

namespace Sequence

@[OEIS := A262302, offset := 1, maxIndex := 13, derive := true]
def A262302 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (_x y) ↦ 4 - y) (λ (x _y) ↦ 2 / x) x 1 2 + 2

end Sequence