/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A059620 sequence
-/

namespace Sequence

@[OEIS := A059620, offset := 0, maxIndex := 87, derive := true]
def A059620 (x : ℕ) : ℕ :=
  Int.toNat <| (((x % (2 * (3 * 2))) % (1 + 4)) % 3) % 2

end Sequence