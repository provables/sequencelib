/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A180595 sequence
-/

namespace Sequence

@[OEIS := A180595, offset := 0, maxIndex := 100, derive := true]
def A180595 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ 1 + (x % (3 * 3))) (2 * (x + x)) x

end Sequence