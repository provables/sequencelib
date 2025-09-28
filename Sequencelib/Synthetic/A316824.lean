/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A316824 sequence 
-/


namespace Sequence

@[OEIS := A316824, offset := 0, derive := true, maxIndex := 100]
def A316824 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ if ((x % 2) % y) ≤ 0 then x / 3 else 1) x x

end Sequence

