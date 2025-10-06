/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A246552 sequence
-/

namespace Sequence

@[OEIS := A246552, offset := 0, maxIndex := 100, derive := true]
def A246552 (x : ℕ) : ℕ :=
  Int.toNat <| ((x / 2) + x % 4) / 2

end Sequence