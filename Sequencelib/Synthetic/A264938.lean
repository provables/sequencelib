/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A264938 sequence
-/

namespace Sequence

@[OEIS := A264938, offset := 0, maxIndex := 100, derive := true]
def A264938 (x : ℕ) : ℕ :=
  Int.toNat <| ((2 * (x * x)) - x) + x / 3

end Sequence