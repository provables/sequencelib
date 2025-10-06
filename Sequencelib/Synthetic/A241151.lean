/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A241151 sequence
-/

namespace Sequence

@[OEIS := A241151, offset := 2, maxIndex := 60, derive := true]
def A241151 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x y) ↦ (y / loop (λ (x y) ↦ x + y) ((x + 1) / 2) (x / 2)) + x) x 1

end Sequence