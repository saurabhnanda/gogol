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
-- Module      : Network.Google.Resource.Directory.OrgUnits.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve all Organization Units
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryOrgUnitsList@.
module Network.Google.Resource.Directory.OrgUnits.List
    (
    -- * REST Resource
      OrgUnitsListResource

    -- * Creating a Request
    , orgUnitsList'
    , OrgUnitsList'

    -- * Request Lenses
    , oulQuotaUser
    , oulPrettyPrint
    , oulUserIP
    , oulOrgUnitPath
    , oulCustomerId
    , oulKey
    , oulType
    , oulOAuthToken
    , oulFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryOrgUnitsList@ method which the
-- 'OrgUnitsList'' request conforms to.
type OrgUnitsListResource =
     "customer" :>
       Capture "customerId" Text :>
         "orgunits" :>
           QueryParam "orgUnitPath" Text :>
             QueryParam "type" OrgUnitsListType :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         Header "Authorization" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] OrgUnits

-- | Retrieve all Organization Units
--
-- /See:/ 'orgUnitsList'' smart constructor.
data OrgUnitsList' = OrgUnitsList'
    { _oulQuotaUser   :: !(Maybe Text)
    , _oulPrettyPrint :: !Bool
    , _oulUserIP      :: !(Maybe Text)
    , _oulOrgUnitPath :: !Text
    , _oulCustomerId  :: !Text
    , _oulKey         :: !(Maybe AuthKey)
    , _oulType        :: !(Maybe OrgUnitsListType)
    , _oulOAuthToken  :: !(Maybe OAuthToken)
    , _oulFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrgUnitsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oulQuotaUser'
--
-- * 'oulPrettyPrint'
--
-- * 'oulUserIP'
--
-- * 'oulOrgUnitPath'
--
-- * 'oulCustomerId'
--
-- * 'oulKey'
--
-- * 'oulType'
--
-- * 'oulOAuthToken'
--
-- * 'oulFields'
orgUnitsList'
    :: Text -- ^ 'customerId'
    -> OrgUnitsList'
orgUnitsList' pOulCustomerId_ =
    OrgUnitsList'
    { _oulQuotaUser = Nothing
    , _oulPrettyPrint = True
    , _oulUserIP = Nothing
    , _oulOrgUnitPath = ""
    , _oulCustomerId = pOulCustomerId_
    , _oulKey = Nothing
    , _oulType = Nothing
    , _oulOAuthToken = Nothing
    , _oulFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
oulQuotaUser :: Lens' OrgUnitsList' (Maybe Text)
oulQuotaUser
  = lens _oulQuotaUser (\ s a -> s{_oulQuotaUser = a})

-- | Returns response with indentations and line breaks.
oulPrettyPrint :: Lens' OrgUnitsList' Bool
oulPrettyPrint
  = lens _oulPrettyPrint
      (\ s a -> s{_oulPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oulUserIP :: Lens' OrgUnitsList' (Maybe Text)
oulUserIP
  = lens _oulUserIP (\ s a -> s{_oulUserIP = a})

-- | the URL-encoded organization unit\'s path or its Id
oulOrgUnitPath :: Lens' OrgUnitsList' Text
oulOrgUnitPath
  = lens _oulOrgUnitPath
      (\ s a -> s{_oulOrgUnitPath = a})

-- | Immutable id of the Google Apps account
oulCustomerId :: Lens' OrgUnitsList' Text
oulCustomerId
  = lens _oulCustomerId
      (\ s a -> s{_oulCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oulKey :: Lens' OrgUnitsList' (Maybe AuthKey)
oulKey = lens _oulKey (\ s a -> s{_oulKey = a})

-- | Whether to return all sub-organizations or just immediate children
oulType :: Lens' OrgUnitsList' (Maybe OrgUnitsListType)
oulType = lens _oulType (\ s a -> s{_oulType = a})

-- | OAuth 2.0 token for the current user.
oulOAuthToken :: Lens' OrgUnitsList' (Maybe OAuthToken)
oulOAuthToken
  = lens _oulOAuthToken
      (\ s a -> s{_oulOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
oulFields :: Lens' OrgUnitsList' (Maybe Text)
oulFields
  = lens _oulFields (\ s a -> s{_oulFields = a})

instance GoogleAuth OrgUnitsList' where
        _AuthKey = oulKey . _Just
        _AuthToken = oulOAuthToken . _Just

instance GoogleRequest OrgUnitsList' where
        type Rs OrgUnitsList' = OrgUnits
        request = requestWith directoryRequest
        requestWith rq OrgUnitsList'{..}
          = go _oulCustomerId (Just _oulOrgUnitPath) _oulType
              _oulQuotaUser
              (Just _oulPrettyPrint)
              _oulUserIP
              _oulFields
              _oulKey
              _oulOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy OrgUnitsListResource)
                      rq
