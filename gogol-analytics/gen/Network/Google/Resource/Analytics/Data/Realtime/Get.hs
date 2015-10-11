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
-- Module      : Network.Google.Resource.Analytics.Data.Realtime.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns real time data for a view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsDataRealtimeGet@.
module Network.Google.Resource.Analytics.Data.Realtime.Get
    (
    -- * REST Resource
      DataRealtimeGetResource

    -- * Creating a Request
    , dataRealtimeGet'
    , DataRealtimeGet'

    -- * Request Lenses
    , drgQuotaUser
    , drgMetrics
    , drgPrettyPrint
    , drgUserIP
    , drgFilters
    , drgIds
    , drgKey
    , drgSort
    , drgDimensions
    , drgOAuthToken
    , drgMaxResults
    , drgFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsDataRealtimeGet@ method which the
-- 'DataRealtimeGet'' request conforms to.
type DataRealtimeGetResource =
     "data" :>
       "realtime" :>
         QueryParam "ids" Text :>
           QueryParam "metrics" Text :>
             QueryParam "filters" Text :>
               QueryParam "sort" Text :>
                 QueryParam "dimensions" Text :>
                   QueryParam "max-results" Int32 :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               Header "Authorization" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] RealtimeData

-- | Returns real time data for a view (profile).
--
-- /See:/ 'dataRealtimeGet'' smart constructor.
data DataRealtimeGet' = DataRealtimeGet'
    { _drgQuotaUser   :: !(Maybe Text)
    , _drgMetrics     :: !Text
    , _drgPrettyPrint :: !Bool
    , _drgUserIP      :: !(Maybe Text)
    , _drgFilters     :: !(Maybe Text)
    , _drgIds         :: !Text
    , _drgKey         :: !(Maybe AuthKey)
    , _drgSort        :: !(Maybe Text)
    , _drgDimensions  :: !(Maybe Text)
    , _drgOAuthToken  :: !(Maybe OAuthToken)
    , _drgMaxResults  :: !(Maybe Int32)
    , _drgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataRealtimeGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drgQuotaUser'
--
-- * 'drgMetrics'
--
-- * 'drgPrettyPrint'
--
-- * 'drgUserIP'
--
-- * 'drgFilters'
--
-- * 'drgIds'
--
-- * 'drgKey'
--
-- * 'drgSort'
--
-- * 'drgDimensions'
--
-- * 'drgOAuthToken'
--
-- * 'drgMaxResults'
--
-- * 'drgFields'
dataRealtimeGet'
    :: Text -- ^ 'metrics'
    -> Text -- ^ 'ids'
    -> DataRealtimeGet'
dataRealtimeGet' pDrgMetrics_ pDrgIds_ =
    DataRealtimeGet'
    { _drgQuotaUser = Nothing
    , _drgMetrics = pDrgMetrics_
    , _drgPrettyPrint = False
    , _drgUserIP = Nothing
    , _drgFilters = Nothing
    , _drgIds = pDrgIds_
    , _drgKey = Nothing
    , _drgSort = Nothing
    , _drgDimensions = Nothing
    , _drgOAuthToken = Nothing
    , _drgMaxResults = Nothing
    , _drgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
drgQuotaUser :: Lens' DataRealtimeGet' (Maybe Text)
drgQuotaUser
  = lens _drgQuotaUser (\ s a -> s{_drgQuotaUser = a})

-- | A comma-separated list of real time metrics. E.g., \'rt:activeUsers\'.
-- At least one metric must be specified.
drgMetrics :: Lens' DataRealtimeGet' Text
drgMetrics
  = lens _drgMetrics (\ s a -> s{_drgMetrics = a})

-- | Returns response with indentations and line breaks.
drgPrettyPrint :: Lens' DataRealtimeGet' Bool
drgPrettyPrint
  = lens _drgPrettyPrint
      (\ s a -> s{_drgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
drgUserIP :: Lens' DataRealtimeGet' (Maybe Text)
drgUserIP
  = lens _drgUserIP (\ s a -> s{_drgUserIP = a})

-- | A comma-separated list of dimension or metric filters to be applied to
-- real time data.
drgFilters :: Lens' DataRealtimeGet' (Maybe Text)
drgFilters
  = lens _drgFilters (\ s a -> s{_drgFilters = a})

-- | Unique table ID for retrieving real time data. Table ID is of the form
-- ga:XXXX, where XXXX is the Analytics view (profile) ID.
drgIds :: Lens' DataRealtimeGet' Text
drgIds = lens _drgIds (\ s a -> s{_drgIds = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
drgKey :: Lens' DataRealtimeGet' (Maybe AuthKey)
drgKey = lens _drgKey (\ s a -> s{_drgKey = a})

-- | A comma-separated list of dimensions or metrics that determine the sort
-- order for real time data.
drgSort :: Lens' DataRealtimeGet' (Maybe Text)
drgSort = lens _drgSort (\ s a -> s{_drgSort = a})

-- | A comma-separated list of real time dimensions. E.g.,
-- \'rt:medium,rt:city\'.
drgDimensions :: Lens' DataRealtimeGet' (Maybe Text)
drgDimensions
  = lens _drgDimensions
      (\ s a -> s{_drgDimensions = a})

-- | OAuth 2.0 token for the current user.
drgOAuthToken :: Lens' DataRealtimeGet' (Maybe OAuthToken)
drgOAuthToken
  = lens _drgOAuthToken
      (\ s a -> s{_drgOAuthToken = a})

-- | The maximum number of entries to include in this feed.
drgMaxResults :: Lens' DataRealtimeGet' (Maybe Int32)
drgMaxResults
  = lens _drgMaxResults
      (\ s a -> s{_drgMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
drgFields :: Lens' DataRealtimeGet' (Maybe Text)
drgFields
  = lens _drgFields (\ s a -> s{_drgFields = a})

instance GoogleAuth DataRealtimeGet' where
        _AuthKey = drgKey . _Just
        _AuthToken = drgOAuthToken . _Just

instance GoogleRequest DataRealtimeGet' where
        type Rs DataRealtimeGet' = RealtimeData
        request = requestWith analyticsRequest
        requestWith rq DataRealtimeGet'{..}
          = go (Just _drgIds) (Just _drgMetrics) _drgFilters
              _drgSort
              _drgDimensions
              _drgMaxResults
              _drgQuotaUser
              (Just _drgPrettyPrint)
              _drgUserIP
              _drgFields
              _drgKey
              _drgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy DataRealtimeGetResource)
                      rq
