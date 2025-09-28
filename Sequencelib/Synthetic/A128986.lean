/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A128986 sequence 
-/


namespace Sequence

@[OEIS := A128986, offset := 1, derive := true, maxIndex := 100]
def A128986 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ (x * y) + x) (λ (_x _y : ℤ) ↦ 2) (2 + x) x x * (1 + x))

end Sequence

