/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A173116 sequence
-/

namespace Sequence

@[OEIS := A173116, offset := 0, maxIndex := 30, derive := true]
def A173116 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x + y) * x) (λ (_x _y) ↦ 2) 2 x x

end Sequence