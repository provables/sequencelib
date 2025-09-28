/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A349595 sequence 
-/


namespace Sequence

@[OEIS := A349595, offset := 1, derive := true, maxIndex := 78]
def A349595 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((2 + 4) % (1 + x)) % ((2 * 2) + 1))

end Sequence

