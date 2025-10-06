/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A137719 sequence
-/

namespace Sequence

@[OEIS := A137719, offset := 0, maxIndex := 100, derive := true]
def A137719 (x : ℕ) : ℕ :=
  Int.toNat <| (((x % 3) % 2) - x / 2) + x

end Sequence