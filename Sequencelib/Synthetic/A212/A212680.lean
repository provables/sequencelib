/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A212680 sequence
-/

namespace Sequence

@[OEIS := A212680, offset := 0, maxIndex := 38, derive := true]
def A212680 (x : ℕ) : ℕ :=
  Int.toNat <| (((3 * ((x - 2) * x)) / 2) + 2) * x

end Sequence