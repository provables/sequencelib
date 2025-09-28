/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010867 sequence
-/


namespace Sequence

@[OEIS := A010867, offset := 0, derive := true, maxIndex := 54]
def A010867 (_x : ℕ) : ℕ := 28

end Sequence
