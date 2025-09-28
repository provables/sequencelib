/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A172051 sequence 
-/


namespace Sequence

@[OEIS := A172051, offset := 0, derive := true, maxIndex := 100]
def A172051 (x : ℕ) : ℕ :=
  Int.toNat <| ((x % (2 + (x % 2))) / 2)

end Sequence

