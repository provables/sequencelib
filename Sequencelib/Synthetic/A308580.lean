/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A308580 sequence
-/

namespace Sequence

@[OEIS := A308580, offset := 0, maxIndex := 33, derive := true]
def A308580 (x : ℕ) : ℕ :=
  Int.toNat <| (2 + (x * x)) + loop (λ (x y) ↦ (x + x) + y) x 1

end Sequence