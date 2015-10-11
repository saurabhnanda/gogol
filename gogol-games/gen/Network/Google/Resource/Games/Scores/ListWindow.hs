{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Games.Scores.ListWindow
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the scores in a leaderboard around (and including) a player\'s
-- score.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesScoresListWindow@.
module Network.Google.Resource.Games.Scores.ListWindow
    (
    -- * REST Resource
      ScoresListWindowResource

    -- * Creating a Request
    , scoresListWindow'
    , ScoresListWindow'

    -- * Request Lenses
    , slwQuotaUser
    , slwPrettyPrint
    , slwUserIP
    , slwCollection
    , slwTimeSpan
    , slwReturnTopIfAbsent
    , slwLeaderboardId
    , slwKey
    , slwLanguage
    , slwResultsAbove
    , slwPageToken
    , slwOAuthToken
    , slwMaxResults
    , slwFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesScoresListWindow@ method which the
-- 'ScoresListWindow'' request conforms to.
type ScoresListWindowResource =
     "leaderboards" :>
       Capture "leaderboardId" Text :>
         "window" :>
           Capture "collection" ScoresListWindowCollection :>
             QueryParam "timeSpan" ScoresListWindowTimeSpan :>
               QueryParam "returnTopIfAbsent" Bool :>
                 QueryParam "language" Text :>
                   QueryParam "resultsAbove" Int32 :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" Int32 :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "key" AuthKey :>
                                   Header "Authorization" OAuthToken :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] LeaderboardScores

-- | Lists the scores in a leaderboard around (and including) a player\'s
-- score.
--
-- /See:/ 'scoresListWindow'' smart constructor.
data ScoresListWindow' = ScoresListWindow'
    { _slwQuotaUser         :: !(Maybe Text)
    , _slwPrettyPrint       :: !Bool
    , _slwUserIP            :: !(Maybe Text)
    , _slwCollection        :: !ScoresListWindowCollection
    , _slwTimeSpan          :: !ScoresListWindowTimeSpan
    , _slwReturnTopIfAbsent :: !(Maybe Bool)
    , _slwLeaderboardId     :: !Text
    , _slwKey               :: !(Maybe AuthKey)
    , _slwLanguage          :: !(Maybe Text)
    , _slwResultsAbove      :: !(Maybe Int32)
    , _slwPageToken         :: !(Maybe Text)
    , _slwOAuthToken        :: !(Maybe OAuthToken)
    , _slwMaxResults        :: !(Maybe Int32)
    , _slwFields            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScoresListWindow'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slwQuotaUser'
--
-- * 'slwPrettyPrint'
--
-- * 'slwUserIP'
--
-- * 'slwCollection'
--
-- * 'slwTimeSpan'
--
-- * 'slwReturnTopIfAbsent'
--
-- * 'slwLeaderboardId'
--
-- * 'slwKey'
--
-- * 'slwLanguage'
--
-- * 'slwResultsAbove'
--
-- * 'slwPageToken'
--
-- * 'slwOAuthToken'
--
-- * 'slwMaxResults'
--
-- * 'slwFields'
scoresListWindow'
    :: ScoresListWindowCollection -- ^ 'collection'
    -> ScoresListWindowTimeSpan -- ^ 'timeSpan'
    -> Text -- ^ 'leaderboardId'
    -> ScoresListWindow'
scoresListWindow' pSlwCollection_ pSlwTimeSpan_ pSlwLeaderboardId_ =
    ScoresListWindow'
    { _slwQuotaUser = Nothing
    , _slwPrettyPrint = True
    , _slwUserIP = Nothing
    , _slwCollection = pSlwCollection_
    , _slwTimeSpan = pSlwTimeSpan_
    , _slwReturnTopIfAbsent = Nothing
    , _slwLeaderboardId = pSlwLeaderboardId_
    , _slwKey = Nothing
    , _slwLanguage = Nothing
    , _slwResultsAbove = Nothing
    , _slwPageToken = Nothing
    , _slwOAuthToken = Nothing
    , _slwMaxResults = Nothing
    , _slwFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
slwQuotaUser :: Lens' ScoresListWindow' (Maybe Text)
slwQuotaUser
  = lens _slwQuotaUser (\ s a -> s{_slwQuotaUser = a})

-- | Returns response with indentations and line breaks.
slwPrettyPrint :: Lens' ScoresListWindow' Bool
slwPrettyPrint
  = lens _slwPrettyPrint
      (\ s a -> s{_slwPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
slwUserIP :: Lens' ScoresListWindow' (Maybe Text)
slwUserIP
  = lens _slwUserIP (\ s a -> s{_slwUserIP = a})

-- | The collection of scores you\'re requesting.
slwCollection :: Lens' ScoresListWindow' ScoresListWindowCollection
slwCollection
  = lens _slwCollection
      (\ s a -> s{_slwCollection = a})

-- | The time span for the scores and ranks you\'re requesting.
slwTimeSpan :: Lens' ScoresListWindow' ScoresListWindowTimeSpan
slwTimeSpan
  = lens _slwTimeSpan (\ s a -> s{_slwTimeSpan = a})

-- | True if the top scores should be returned when the player is not in the
-- leaderboard. Defaults to true.
slwReturnTopIfAbsent :: Lens' ScoresListWindow' (Maybe Bool)
slwReturnTopIfAbsent
  = lens _slwReturnTopIfAbsent
      (\ s a -> s{_slwReturnTopIfAbsent = a})

-- | The ID of the leaderboard.
slwLeaderboardId :: Lens' ScoresListWindow' Text
slwLeaderboardId
  = lens _slwLeaderboardId
      (\ s a -> s{_slwLeaderboardId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
slwKey :: Lens' ScoresListWindow' (Maybe AuthKey)
slwKey = lens _slwKey (\ s a -> s{_slwKey = a})

-- | The preferred language to use for strings returned by this method.
slwLanguage :: Lens' ScoresListWindow' (Maybe Text)
slwLanguage
  = lens _slwLanguage (\ s a -> s{_slwLanguage = a})

-- | The preferred number of scores to return above the player\'s score. More
-- scores may be returned if the player is at the bottom of the
-- leaderboard; fewer may be returned if the player is at the top. Must be
-- less than or equal to maxResults.
slwResultsAbove :: Lens' ScoresListWindow' (Maybe Int32)
slwResultsAbove
  = lens _slwResultsAbove
      (\ s a -> s{_slwResultsAbove = a})

-- | The token returned by the previous request.
slwPageToken :: Lens' ScoresListWindow' (Maybe Text)
slwPageToken
  = lens _slwPageToken (\ s a -> s{_slwPageToken = a})

-- | OAuth 2.0 token for the current user.
slwOAuthToken :: Lens' ScoresListWindow' (Maybe OAuthToken)
slwOAuthToken
  = lens _slwOAuthToken
      (\ s a -> s{_slwOAuthToken = a})

-- | The maximum number of leaderboard scores to return in the response. For
-- any response, the actual number of leaderboard scores returned may be
-- less than the specified maxResults.
slwMaxResults :: Lens' ScoresListWindow' (Maybe Int32)
slwMaxResults
  = lens _slwMaxResults
      (\ s a -> s{_slwMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
slwFields :: Lens' ScoresListWindow' (Maybe Text)
slwFields
  = lens _slwFields (\ s a -> s{_slwFields = a})

instance GoogleAuth ScoresListWindow' where
        _AuthKey = slwKey . _Just
        _AuthToken = slwOAuthToken . _Just

instance GoogleRequest ScoresListWindow' where
        type Rs ScoresListWindow' = LeaderboardScores
        request = requestWith gamesRequest
        requestWith rq ScoresListWindow'{..}
          = go _slwLeaderboardId _slwCollection
              (Just _slwTimeSpan)
              _slwReturnTopIfAbsent
              _slwLanguage
              _slwResultsAbove
              _slwPageToken
              _slwMaxResults
              _slwQuotaUser
              (Just _slwPrettyPrint)
              _slwUserIP
              _slwFields
              _slwKey
              _slwOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ScoresListWindowResource)
                      rq
