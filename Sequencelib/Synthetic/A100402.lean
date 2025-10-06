/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A100402 sequence
-/

namespace Sequence

@[OEIS := A100402, offset := 0, maxIndex := 100, derive := true]
def A100402 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (3 * (x % 3))

end Sequence