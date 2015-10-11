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
-- Module      : Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a web property-AdWords link.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementWebPropertyAdWordsLinksDelete@.
module Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Delete
    (
    -- * REST Resource
      ManagementWebPropertyAdWordsLinksDeleteResource

    -- * Creating a Request
    , managementWebPropertyAdWordsLinksDelete'
    , ManagementWebPropertyAdWordsLinksDelete'

    -- * Request Lenses
    , mwpawldQuotaUser
    , mwpawldPrettyPrint
    , mwpawldWebPropertyId
    , mwpawldUserIP
    , mwpawldAccountId
    , mwpawldKey
    , mwpawldWebPropertyAdWordsLinkId
    , mwpawldOAuthToken
    , mwpawldFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementWebPropertyAdWordsLinksDelete@ method which the
-- 'ManagementWebPropertyAdWordsLinksDelete'' request conforms to.
type ManagementWebPropertyAdWordsLinksDeleteResource
     =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "entityAdWordsLinks" :>
                 Capture "webPropertyAdWordsLinkId" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             Header "Authorization" OAuthToken :>
                               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a web property-AdWords link.
--
-- /See:/ 'managementWebPropertyAdWordsLinksDelete'' smart constructor.
data ManagementWebPropertyAdWordsLinksDelete' = ManagementWebPropertyAdWordsLinksDelete'
    { _mwpawldQuotaUser                :: !(Maybe Text)
    , _mwpawldPrettyPrint              :: !Bool
    , _mwpawldWebPropertyId            :: !Text
    , _mwpawldUserIP                   :: !(Maybe Text)
    , _mwpawldAccountId                :: !Text
    , _mwpawldKey                      :: !(Maybe AuthKey)
    , _mwpawldWebPropertyAdWordsLinkId :: !Text
    , _mwpawldOAuthToken               :: !(Maybe OAuthToken)
    , _mwpawldFields                   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertyAdWordsLinksDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpawldQuotaUser'
--
-- * 'mwpawldPrettyPrint'
--
-- * 'mwpawldWebPropertyId'
--
-- * 'mwpawldUserIP'
--
-- * 'mwpawldAccountId'
--
-- * 'mwpawldKey'
--
-- * 'mwpawldWebPropertyAdWordsLinkId'
--
-- * 'mwpawldOAuthToken'
--
-- * 'mwpawldFields'
managementWebPropertyAdWordsLinksDelete'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'webPropertyAdWordsLinkId'
    -> ManagementWebPropertyAdWordsLinksDelete'
managementWebPropertyAdWordsLinksDelete' pMwpawldWebPropertyId_ pMwpawldAccountId_ pMwpawldWebPropertyAdWordsLinkId_ =
    ManagementWebPropertyAdWordsLinksDelete'
    { _mwpawldQuotaUser = Nothing
    , _mwpawldPrettyPrint = False
    , _mwpawldWebPropertyId = pMwpawldWebPropertyId_
    , _mwpawldUserIP = Nothing
    , _mwpawldAccountId = pMwpawldAccountId_
    , _mwpawldKey = Nothing
    , _mwpawldWebPropertyAdWordsLinkId = pMwpawldWebPropertyAdWordsLinkId_
    , _mwpawldOAuthToken = Nothing
    , _mwpawldFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mwpawldQuotaUser :: Lens' ManagementWebPropertyAdWordsLinksDelete' (Maybe Text)
mwpawldQuotaUser
  = lens _mwpawldQuotaUser
      (\ s a -> s{_mwpawldQuotaUser = a})

-- | Returns response with indentations and line breaks.
mwpawldPrettyPrint :: Lens' ManagementWebPropertyAdWordsLinksDelete' Bool
mwpawldPrettyPrint
  = lens _mwpawldPrettyPrint
      (\ s a -> s{_mwpawldPrettyPrint = a})

-- | Web property ID to delete the AdWords link for.
mwpawldWebPropertyId :: Lens' ManagementWebPropertyAdWordsLinksDelete' Text
mwpawldWebPropertyId
  = lens _mwpawldWebPropertyId
      (\ s a -> s{_mwpawldWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mwpawldUserIP :: Lens' ManagementWebPropertyAdWordsLinksDelete' (Maybe Text)
mwpawldUserIP
  = lens _mwpawldUserIP
      (\ s a -> s{_mwpawldUserIP = a})

-- | ID of the account which the given web property belongs to.
mwpawldAccountId :: Lens' ManagementWebPropertyAdWordsLinksDelete' Text
mwpawldAccountId
  = lens _mwpawldAccountId
      (\ s a -> s{_mwpawldAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mwpawldKey :: Lens' ManagementWebPropertyAdWordsLinksDelete' (Maybe AuthKey)
mwpawldKey
  = lens _mwpawldKey (\ s a -> s{_mwpawldKey = a})

-- | Web property AdWords link ID.
mwpawldWebPropertyAdWordsLinkId :: Lens' ManagementWebPropertyAdWordsLinksDelete' Text
mwpawldWebPropertyAdWordsLinkId
  = lens _mwpawldWebPropertyAdWordsLinkId
      (\ s a -> s{_mwpawldWebPropertyAdWordsLinkId = a})

-- | OAuth 2.0 token for the current user.
mwpawldOAuthToken :: Lens' ManagementWebPropertyAdWordsLinksDelete' (Maybe OAuthToken)
mwpawldOAuthToken
  = lens _mwpawldOAuthToken
      (\ s a -> s{_mwpawldOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mwpawldFields :: Lens' ManagementWebPropertyAdWordsLinksDelete' (Maybe Text)
mwpawldFields
  = lens _mwpawldFields
      (\ s a -> s{_mwpawldFields = a})

instance GoogleAuth
         ManagementWebPropertyAdWordsLinksDelete' where
        _AuthKey = mwpawldKey . _Just
        _AuthToken = mwpawldOAuthToken . _Just

instance GoogleRequest
         ManagementWebPropertyAdWordsLinksDelete' where
        type Rs ManagementWebPropertyAdWordsLinksDelete' = ()
        request = requestWith analyticsRequest
        requestWith rq
          ManagementWebPropertyAdWordsLinksDelete'{..}
          = go _mwpawldAccountId _mwpawldWebPropertyId
              _mwpawldWebPropertyAdWordsLinkId
              _mwpawldQuotaUser
              (Just _mwpawldPrettyPrint)
              _mwpawldUserIP
              _mwpawldFields
              _mwpawldKey
              _mwpawldOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy
                           ManagementWebPropertyAdWordsLinksDeleteResource)
                      rq
