/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A242112 sequence
-/

namespace Sequence

@[OEIS := A242112, offset := 0, maxIndex := 70, derive := true]
def A242112 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (x / (2 + (x % 2)))

end Sequence