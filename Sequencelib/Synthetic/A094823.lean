/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A094823 sequence
-/

namespace Sequence

@[OEIS := A094823, offset := 0, maxIndex := 72, derive := true]
def A094823 (x : ℕ) : ℕ :=
  Int.toNat <| (3 * ((x / 2) / (1 + 4))) + x

end Sequence