/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A231116 sequence
-/

namespace Sequence

@[OEIS := A231116, offset := 1, maxIndex := 4, derive := true]
def A231116 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (2 + x) * y) (λ (_x _y) ↦ 2) x 1 1

end Sequence