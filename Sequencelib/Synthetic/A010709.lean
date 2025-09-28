/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010709 sequence
-/


namespace Sequence

@[OEIS := A010709, offset := 0, derive := true, maxIndex := 100]
def A010709 (_x : ℕ) : ℕ := 4

end Sequence
