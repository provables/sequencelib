/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A260006 sequence
-/

namespace Sequence

@[OEIS := A260006, offset := 0, maxIndex := 100, derive := true]
def A260006 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (x + x) + y) x x

end Sequence