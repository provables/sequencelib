/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A323723 sequence
-/

namespace Sequence

@[OEIS := A323723, offset := 0, maxIndex := 100, derive := true]
def A323723 (x : ℕ) : ℕ :=
  Int.toNat <| (((1 + (x * x)) / 2) * x) - x % 2

end Sequence