{-# LANGUAGE OverloadedStrings #-}

module Gask.Types.TaskType where

import Data.Aeson (FromJSON, ToJSON, Value (..), parseJSON, toJSON)

data TaskType
    = TT_TASK_TYPE_UNSPECIFIED
    | TT_RETRIEVAL_QUERY
    | TT_RETRIEVAL_DOCUMENT
    | TT_SEMANTIC_SIMILARITY
    | TT_CLASSIFICATION
    | TT_CLUSTERING
    | TT_QUESTION_ANSWERING
    | TT_FACT_VERIFICATION
    deriving (Show)

instance ToJSON TaskType where
    toJSON TT_TASK_TYPE_UNSPECIFIED = String "TASK_TYPE_UNSPECIFIED"
    toJSON TT_RETRIEVAL_QUERY = String "RETRIEVAL_QUERY"
    toJSON TT_RETRIEVAL_DOCUMENT = String "RETRIEVAL_DOCUMENT"
    toJSON TT_SEMANTIC_SIMILARITY = String "SEMANTIC_SIMILARITY"
    toJSON TT_CLASSIFICATION = String "CLASSIFICATION"
    toJSON TT_CLUSTERING = String "CLUSTERING"
    toJSON TT_QUESTION_ANSWERING = String "QUESTION_ANSWERING"
    toJSON TT_FACT_VERIFICATION = String "FACT_VERIFICATION"

instance FromJSON TaskType where
    parseJSON (String "TASK_TYPE_UNSPECIFIED") = pure TT_TASK_TYPE_UNSPECIFIED
    parseJSON (String "RETRIEVAL_QUERY") = pure TT_RETRIEVAL_QUERY
    parseJSON (String "RETRIEVAL_DOCUMENT ") = pure TT_RETRIEVAL_DOCUMENT
    parseJSON (String "SEMANTIC_SIMILARITY") = pure TT_SEMANTIC_SIMILARITY
    parseJSON (String "CLASSIFICATION") = pure TT_CLASSIFICATION
    parseJSON (String "CLUSTERING") = pure TT_CLUSTERING
    parseJSON (String "QUESTION_ANSWERING") = pure TT_QUESTION_ANSWERING
    parseJSON (String "FACT_VERIFICATION") = pure TT_FACT_VERIFICATION
    parseJSON _ = fail "Invalid TaskType"
