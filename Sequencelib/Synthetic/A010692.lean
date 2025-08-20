/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta
import GenSeq

open Synth

/-!
# A010692 sequence
-/


namespace Sequence

@[OEIS := A010692, offset := 0, derive := true, maxIndex := 66]
def A010692 (_x : ℕ) : ℕ := 10

end Sequence
