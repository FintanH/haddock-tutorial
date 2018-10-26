{-# LANGUAGE ConstraintKinds #-}

module TypeConstraintSynonym where

type ShowEq a = ( Show a -- ^ The Show instance
                , Eq a   -- ^ The Eq instance
                )
