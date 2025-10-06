/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A323417 sequence
-/

namespace Sequence

@[OEIS := A323417, offset := 0, maxIndex := 5, derive := true]
def A323417 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + (2 + x)) / (1 + (x % 3))

end Sequence