/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A242659 sequence
-/

namespace Sequence

@[OEIS := A242659, offset := 0, maxIndex := 100, derive := true]
def A242659 (x : ℕ) : ℕ :=
  Int.toNat <| (2 + ((x - 1) * (x - 2))) * x

end Sequence